
### Story: Add multi-customer scheduling for specific exams

There is a product need to support multiple customers (E.g. schools) who will sit multiple exams. Exams that can be taken have a 
duration and may only be taken during hours of operation (when proctors are available); all exams must be completed before the 
end of the hours of operation. Due to the limited number of proctors, it is only possible to admit a limited number of candidates
to an exam for every start window (default to 15 minutes)

Candidates, must be able to choose which customer and exam and may schedule a time to take an exam. Assume that an API will also be
built to enable reservations in addition to the web user interface.

