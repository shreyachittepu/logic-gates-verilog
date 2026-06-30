//Design file for all the logic gates - allgates.v

module allgates(input a,b,output yand,ynand,yor,ynor,yxor,yxnor,ynota,ynotb);

and g1(yand,a,b);
nand g2(ynand,a,b);
or g3(yor,a,b);
nor g4(ynor,a,b);
xor g5(yxor,a,b);
xnor g6(yxnor,a,b);
not g7(ynota,a);
not g8(ynotb,b);

endmodule
