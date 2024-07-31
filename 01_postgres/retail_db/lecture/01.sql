SELECT * FROM public.orders;

SELECT count(*) FROM public.orders;

SELECT DISTINCT order_status FROM public.orders ORDER BY order_status ASC;

SELECT count(*) FROM public.orders WHERE order_status = 'COMPLETE';


SELECT * FROM public.orders WHERE order_status = 'COMPLETE' OR order_status = 'PENDING';

