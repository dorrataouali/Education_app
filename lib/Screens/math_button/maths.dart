import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MathsPage extends StatefulWidget {
  const MathsPage({ Key? key }) : super(key: key);

  @override
  _MathsPageState createState() => _MathsPageState();
}

class _MathsPageState extends State<MathsPage> {
  CarouselController _carouselController = new CarouselController();
  int _current = 0;

  List<dynamic> _movies = [
    {
      'title': 'Algebra Course',
      'image': 'https://img.freepik.com/premium-psd/algebra-math-education-flyer-template-psd-v2_351449-1727.jpg?w=2000',
      'description': 'Algebra Course'
    },
    {
      'title': 'Geometric course',
      'image': 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMUAAAD/CAMAAAB2B+IJAAABU1BMVEX/////3RkAAAD///3//v/9///+3hj///z+2wD/3Rvq6ur7+/v4+Pj9//04ODiqqqoXFxfw8PDDw8PR0dGwsLDLy8t/f39wcHDY2Ni6urqLi4ufn5/e3t5PT0/Z2dnm5uZnZ2eVlZVGRkZ2dnYvLy9ZWVk+Pj6Hh4eQkJAlJSUcHBxfX18xMTESEhLu0ShycnL9+9/+//Pt2iH67I3g2CT43x3998X9/en64Dj99Lr8+dPH0SfQ5LjC25/75Fu11Yr64kzl8dOizGv66Hbb68Xt9uPa1ST975+8zCrU5rr752776YD78Kr+98yz1IWWxladxTHXuha/2purxivS4Lns8sL87Za303S+yxjs65vg1jPN2Wuyz4TY5pfV46Px6IPP1j6TxEvN3HuTxDXa5MydwGugt33Yzo/fxUPj0XLdxEDv5K/j0me0yJTI17uDp0vRw2NyIra5AAAgAElEQVR4nO19+18iSbZnkJmRDyG1EKFAQXy/vUWqKCo+sMBH+aq25jpz985Od+/0znb39t7d//+nPd8TCSTvRK3S/nzqzLRAAUl8M847TpwQ4qtS5Qh/pVcyIyHIvOSP2Z+kEbiGbum1E13ohryx277gRHYOTTNifl0Q4qjGKPbtMCjMoo/iUbZcxBJ/p8tIWXC6fKNIWL4yCuvEYhTHthMChrlzrlDst13mqixodtzjjnthHu7QP5mlr4uiciV0gNku2e3M0I3OdxSKA9EyGcRPUnfFTcetMMFPTsTe/booHjxiB0NK6e1/KhIQxzRx73rNxWWR33IKARS6Lh5qwjVkodj6RRo+81PE/ij7DOH5ZN1deRiIpAmRhZtjk1jChEz2QqGGeerpjXHRk2pZuLor2/nJAT9FTNMu7Rl9xvASMKoPD1UAkZZB/x1sn9KEmANQ2MduAwXBrz1Ykiaki4IgfqKbQlJkfV0UUui18slRxeKnBMTbvS4xZ3VHwQ/2tZRu4wLgJ0uXex1fYf1EID7SRH1dFExWpXxShqp0Ldzbvf3jCGTd7ECydajm4kKABX0UxE86idanNu1A/HRJugD8hJn66mTQb3iVo5OqEhFSmVbhgjmr/eae+4p2VzQ5yjvxSMBhcFr40FT6CVqZmPUboBDqN7zqyQNxliEMYiyISIfyNQ+3wDamc0AsVP/yUYX5qdQmTA74ieYD+smwvq6O8kFIn0G88t0RG2FyJqQg5Rtp0bom9Ca9Lu354kqDqzzwtz+2zRyhvdyJOA591m3cp29GVu3hrkyc5erEJYI8CrMFBb+yTy0fteFadx6hELvtzOeYO9BnJumnbyEUrURaimT97u8V+m1SLAUyvO0oHPiCUt1dHfzk6oZ32m74TfMLPmtfu+Jb6KdWkq60iOVrJxiiNIJzQeK6dRhh/f+IuWLM9EGDmGu7038ifqI7QPbu2QqK5Iqmmy5j8LQauj5Iygx8ThfeA+61FAdmk9tN5Quy1sHn4Ilbf/cwyFuzXT850E+wd7Kpk59MlkXKRlgYPl9OD3NfoHcfCD9BvjVbhPt8B6zi2LfqHrniqEpXlcRPrSjYfyIU9vVzAfjjQQjjWbDMEkDCaDygOPJRBNidRnWp3L1iQV0XjEeXltvt+on4aQszQvbuJWCQe1Etl/9yVf7Hv29fX2/fFMLMro9CZxQB6W6gKME6ktDqd56lJqzNYTHP2cabu/K5/hOPonZURSi3t721c140bdv5eCCNgfeHpPtIMd9u4C4THt+jPeYrWKJchanxju1I0At2/PiO/KfnywSxj6iQ5qfH/ZJN7EABDnGqeWEN0nwEswbXiEawH0QRKfpe1LW6D75+emzVTybmbAsPJc/Qnz0XlqheQTXJG7OuYdQYBl3ZcAk+Bz9wtptDNJUvaNo36nMnCDLkgdPhepz78R2J/3NR6LihxLuSzKqJXzLNnS08kEM6GMVVNxQqXDVpePhYuUp2kfmpFYXiJ/afdCu0rXBJY7sUtVhuizWQ+gPZCV3snfKMOzyMIpIqZoG+0/+alSrfB3kT5BbyBdXNPpAQuROdBikvOo324ZavAoaRCvIZXIM9B7clLqxW+OHCbtwqc2uHXeWPYpD1q1ahaQ3RioJlFr4gMgUnNcPSjUKn/3Tux3fDKVmLXBmKm719txX7Awuo0iANnmDFae4Z/fiVJpBRGLgFZmB8vooqWST/V1fkhEh53JE4gb0jobimmzqMgirXqkfsynzaawXHKApBJWju8N2EnzkARUXw9D62zgW/ME8lHC0LJvSmS/5pC1xLvrsbPjSSLIi1hxqZHtvch8vk6sxYtSqGI3dbbtYWc7a9LfpNN713heklrt8OSLdZV7Sf6BMPNfLyjL327BPHd+CnofJP0mJfwRDln9j5uvakoSvGqlTYZNx0Q3Hdl2fp62WgII5oQVEPurdVqC0t+bF9KlS+AP7TMFJB/hiCFMO93kIw6dilA1LSso5C74mi32STdizX2BsW10EU9ezmjfBOLN015G2nfmL/yS55w8UUUEQ654qLhzsO1OijH4fVrviddo7iWO2x760yGAUy4C1xqFnPbu4iNCJlbZ3aZjf/yST/aWAI0Lhl9N8eewqyUDKZJUk7mPZxAWGFrh8J4i4RVIVm5JwTlEhh9LkwzQEF33RdV3wKovDNReS29gCsbVl+jKCIWJD4SQ/PUMSY4ogkkMz8J554TAeEo3jjwuM7spBcsoJpR9K0kL2i11fT1lHQUFpRKHPhFB74Xa/UYrSV/4RPn3rC1zBhyGL21WE/SUM7uM75uUrGwa+H8hLs0DU5e4sVyHZ/rgUK9r11cRxEUTd6/15mXr1uS5DTTLN+iuxKGd4jJ2/nLwKpoAO2ZBw0mhByYpkSXJ0HSzQmAygjxXMkA5D77XurGIXOjmSLybxUXmXpxIICOWhLaNIUX/LlrxEih2Mp/IgFfiLfNfBTdKlz5hp726NQx5KuJQ9K7A7CN99ixmtfQelAwesBMHvyNDBMLCORGjQPkR8xwMWtKMBPBOJ0b8DlW1DAaCMdSTo9cC2HpwOBxOkBxTrwyORuyYZHq0DY5s2g2+RPIy4eRAFzQVNa/CtyVZ0raKSfeAD70g0tEzr7nVDau60BPlHxENNhOxe6h0SfIQpIBDM4G7w26EfIo37gB1eUgijOYVjNv/0HcbG+d9ruehS/sKep+CkkCEN4ZbojhvRKwRCAZpwDiUO44PangqyWK8Ti1s1/O9+xbds8vSC5HyR5FKuesA8mZRCFMno7f6O51OWjHUx9QiJZP1F8J8P74xRMUDCqnACnc9FE6VyS431hIX1Qrta83Zub3b1QqoMAMApDWE0UHPFyxm+XDF6h2LoqAH8cFsMPoEIS4nvLcC3BU9G58mOyFYWD7NXzOczvVri0r6XmAiaheUUyeiZS/xQjuR/tFhSOSfwUUfw0BArDNWqwTK7wPnZb4qWJ2OIpJjlA1hKpY0mh2aAYz79HjIL+v1dHYfrmAsxfYLem1VSAn0yO74aJKZCl0SlQIfdY7Ds2m7x2GCaEnNhq2yKdabDKEaFS8DrmQrShQDKKnT2KkbzTSDA1Yqp8Aan3WxnuNgXIEJgOMsN7x63z2wCyc8lCfnogh8q+k7hxsplQOIGxXmJ+SX6lvOhcD4YpsX8UQ4i2T2RB9XIV+sq9MLtIOP3nC7l5YQ11cYWCKFAQQZ4er3bbx+R7Bn/H8f0nMuqeHO53mJC947yZLg5OO1dpTbZ0hxwFfxrCoALFQzsKE0YPboF5TUFH2+/4moQskTF0lp84ENJ9xNGQt212iAb/2eK8il3cZ89GDxULS++B9S15aAH2POQ4zr44aF/sa/hP4onLRnC7qmULKzvkZ0Qi7UjwG+cIKkwEs3q4XzF8FOTxNUFEznfAno79eNyuoEjkHfBTeG+8E4XOQk5X2EMU3KVogO7iFi8739bXsQZRA8Vt8yKk8Q4dU3mVrZcnfoIbvSuHirXbYBAQ66qKvIq+36NggBwrB9HsoydC3S7pHQGFG1y+MA+/bLFL276Yv3WpYhbEl08F4f9XK9dg0QrHdrcSDrMRzCI3GeK3PK5f0wNBO0n3TuelcW+U/3TqPRFBC1mc+xXWI7neTmfBmHKsHLt044rB6xdYvgAFUDgKSvt1/XymGbl9gUUjSAd0Lo3w9rTTI4GnpXSuSTo3xGTUynzVJgqWhg4t6PtP8A+G8p96wpBK54Knr7vUnJms8FVtyaBQD3eEQ3ZLNmJ2R1V+ddweR623nHrPX0hVxMVWVmPpqJ2rHFPVorCfK3lho/cPI6AXXBLZeUOaF2SjyrO0awyVWe5HKLc64sq3vU+d5TQNP5eDWZo6o2fiS6rlCyE660pbrxdhfoJ+cl9qLshbpzCujEUw+GsdyUeVJiGdS7rdvmhWaXVDUQ2BAv7TF+VtetJ9ggPVlfT6qqqHYsZCZ2EG/67DwaxKIPb64ToKKToWilpZys9n3ko9VDVA76EjmaouQDG4gV/2yhW4QN52xDY7tUq9Stc2b3vG37q/DKWi69609YUXIbfDmdJ+KMAYbq1yVS7/4nkH+/u3FFr768NwrLrAKJ6j9grLWr1+vIGiNUnUMRWqvgDlnM8tV6HbXilXa5bu/cdPP23ZRKc3Hk0HUoceMt6dRXP82+T29PxpHYswA1Gwn07349YIn3/qhULwiAWpJWKgrXNeAjm9ldUrC1HgfqlDOrZgNBwyU3of+eZrCtkeSbTy06WKh6X+rEI035/1OFVb4igJi2pkn80bOFYItAtthZUmUrUoNuvn9khevsDjx14oTEfVF/S/UCgUWEE94sq4Qj21RkwPt9PZh58LnWtdOEEH0TznAnzzoP+6Hu8DINFqLy6tk8MpHcjc8/0nrL9x0R5nfh2+OqfFHbNUIDeCs7TiNhDMNqoP+nBTAwXpsJueJfR1f1w+12hjvRbRKlxPX4hpiDuYaIfDR4vYG2Xw23a9eHxL8dNx/+SarpYvyArUC535/jc0hcP8hIDp1HNDL331RkF+E5aGPwUc6OI5e8rFPaSVKviA0rns9igvuliQfSsSCQVK6A22onJvv1lCr0J52LvzCOefwhW/9SPdtf7C+bW9loWpc05z+QWgSJqTXUQw63DqX9U29NNPSIFY1aOHih+BkVUtPJ7adiBUNaGfYO+k/jwFxUQMhZ+5DTC+w8uo0IAAaFnWVRnVdtY+OVZbPE32R12Ivm4P3R5y8K9OlIxb8MusWxQ6+2wbcTj/RPrJCJmP6EsVXiVsWblDZMlz8ZHjfxRscW6BHCvFT3Zpz5X969UwcA6Dj04QeUkDm0xQ6Mzy5fgevmMfiOczFIIZViVt+x62uM4SKPyPUTBLAY8U/1lkWztMbYNVebgDZ+mWjg0z3g1z1pbKPz2+QI1pAMVuS8nJFrSH06gBhZMDnSsqlQPyc8HLYdc/dcn5lb8/wJLrrm7QvSg8lsy/qfU7z3p66iZA0lNhQHNhHk4s59Ai9ao48qdcGMeKd8TBLPGyG5ILWIcaHHvdcS0C12xL8d//08GmhgMRvsCgDxlSL8M0Ce804usPB0pQlYIXGoMxOJg9sZCU3z9QpeThSOcUODBXHnhzhjR0wzshETmOPEr5IgEe3ZhqDYoIwYxfgkjCfQ5NBcMWHA0iDh0FB092Py21OUPoJzX4Jnsvkn8SWFw3rDKj2CvZjUCCyxwong9Ots52WOf65qfdPiysC96/dFUmVQHOeqFKfhhgrBbTbd6vr1+YOztczv5jK8vqlsup5idHx1LnckydlK8FltRfcr8UR2W43oWaC5Qwwdv75HX+yHM9BfyR9ecvuy8EdYoWeP6maPvhF0VL257sW3Tz1khH7S+EThQ+FnfOEbKax7vWS2x6+IYExrFqV1fVavXqH//Y/vjp+qZgSdf9M81EgyzPG7JS7zt9NXpmcu47fafv9J2+03f6Tt/pO32n7/SdvtN3+poUi7/2CF6AMpo2F3vtQQxPcUX1l6uapk2E+mKUqOVC41Nj2RceXGiae7dGtJBbnuaXOUIxHuqLi3Nzi4GXYxpo/ZX4cVSrUwq3Nj6/PhbuizRra81X4/5FFnt/4WtSE4U20/6ezzGxIOc0Xixo2mrzn+c0bTS7QheZ/moj7UeE4l18JDEJGFNCpObmlmIiszS3lMjPbJCcjyzPbYwuTqixj0zSixzkJrG0SV/IzdUlgTDNCjE5O5l/NRR4TNCgVmNihh5iYoL+rqzhWZ1T5sDw9Re5mEj6T9P+Zeb8y7wS1VGIZRpTIoACFM032I0YvvlipgNF8vVkogVFklmqFYVYpz8ZEZtnzYX3ZhKZdxh8PENTtZbJ1HXSOBhs/fVR4E7PBlCs0m2OQnXRe9FNPNK4N+lFYmpqKtkm3ZMKNcFYzuVmvr3ZbKBItM0FibqYbiow7X3eh+RTEAUEJocJm8GMhlTVL0kNFJNtcgHb14Ii2xsFGC8qUuqDS9H23/j6VEeRpt9fi7WhiDOX+RQjttqgx3wmk5luRTGn3pllFOFM/8sSUMTi6VnfXrSiwPC0rIjOa5v0ehGYYvlR9Sah0PJxdd/xDolKFP7Lwms4IQHbDRXThoIVam5B8Umi8clcVI28rmlZp83lfJ38Cj5xE8V8rBOFmPLfXM0GXizk6wDr9uJ9/SJLGhvFb01Lm++IVufmE2o4m+8Yxbs6eycXScFuLMf9F2QsFlL1F6vvNutu09gcSc3aYkaM0QW+/WyMMDV4OU4vSJDpb2MkI9lsc1Qj2XzzBX04GngnG/cvmP8Txlnf6Tv1odjM6vqfn6vhn88P+Z1YJjOR/CqjCUsfcrl65mYll1uKwxd6H3g/OZ9KDcpsjGhdot1vSjBkKnMTJ4W/JOJz2mjQhRhTvkVfGnnXivzbE9ztHD8bD3p+DZpgT7c/vT4KTkAxSyE8yIvpldmVrIhNzq5kxPh8fgoeyfwsPV+ZnSRzKBL0PicIJlLvZ/Pqc28ARcZnqdg7Dpwz7EHBI58nQc9uKu8oxdEH5GNCcVh+gf99jHXBG0CBASPs94O0JgoAaKJYaUER22h6wqm3gILjNGIpKKeRIArQ9DIYbn1+og0FO7fzs7m3gwJSnWGGQnwRQJFKpGMN6W5Fseh77utvBkWU46MkYwmiUJqrrmmDKBIxkoo5vJt4MyhYOUVTSHSKIAqVKOiKIr7mm7n820HB07Dqj6sbijpHAQ0kIhEd9TMHmbeDQtBQNuohajcU4DTMwWJUxFcZDazIMk3F6htCoRJ7C2z72lHg9ebqpMhy8M2JckIxrl69IU1bz50pT7YdRdQfqfjQtBDJxqvNJ6NAg86XahDgE48o0UCRUbZbvTe9pp5HOc3xvi7t8OC10YSy3doTfFpX4rCSlzw7KDueTCb9dZbx5HhcROlvwx/P+8/zmYm8/z5RPDNBuPlz0WRyfOglJN0S3tFQDaneIGGv1v3ZyWsP4xlkYTtS7eysZp3xaSWyd1eRN0zYhnh0jzbhlTMLPSUH98N8i6RX73F+GqE5KaObW8n7dnPRkjB8DtXuznAQEXedvP/RtHnv8vP2Wo1NTc3WVxzys/SiY6AjmUwGYd64b8afTDp2koKZrlTHRiGtm594U65zIMMfSdCNOGjzn/Ni0Ej7Jyb80T8bBTcSrJ6deOgYrxtSPzi2zS/cJfqT9bz9aKO+NSaCq6ppHYsomRdDwcyEXim6ZUi5t40mAjufecf9wK69/YlRqCVetT7MKLLIk8WSiWRe8DLTbGLaR5GYmEj3vWA30lXXAOvo7AobA7kxEjdLcUzzkve98xE2T2cqtQrDbJSro4ixtzEHVLOK5eBiAMXYOj8fTsi5Sy1JRAXM5G8hPaj3iTaLn9GYw/6Rt1A/D0VgWTheX+zy3/AXm94zis36iyFRoIsNmMnF/XbRZLIOwjTPuQuWect7gp+OYlPFPCk1yDgLgraw6KPAWpK2upDyq0DWGcjQNSt6+ecyuAoD9budmX6nCPMLGkLYx94zzs8jFKNz7I2vae/WGUVOTU58QT0GpRvrwYAXrpxNjR9b7Stndx5vEZeGLPiN6p36n63PRYfPL3i6I0IoFjJISU2oRBqh0JCwFWr4bSgm/Mep0Ne36H/e3X0FZ22haYX3GGlrhGuah9yqvbT3dMs3ipIz8Ajd4mQDBSutdCeKTPOfwxE46Opn9E/U0bpB3y11NPMldvqMlhfPOW+Vaw8ojia1tIpMiELBeZrkC6CA80rM5FrSMrgnuu2PvAXHOXeIM5/eu4hRjPtxqUIxqoYbzb0EivJ9lbWURZrpwul2uCn3uTtXfe7EE8/RU3UgjCLto+ByzPmVJV8FIyxdSI09EQU533hA//rTbg0M/S4qn4t+547noEAaZC7qo6gbOh9FLGD1nsBRJ6o1avcmjA06RGuySHHvif4URiw4UTOl0oRkxvM8DWuz/nC5Dq2JIqF1W67pRbp3z/1+Lrq26G6oqeJn7u/58Ynb+2cnJ2fVAzLmkyvL8C6imfkPUyPxycll9hPjmZXJCTG9vMKlwyP0GHoxkgZ1dYdusXw0Zh8c5BVG+HSx3m0YX6QXzdOI4oazKlr+7XbtCN2UcPIKuXFz70sZrxfXWlJU7nG8t7zuc1w8WlZ95n5Sj71u+LNP2XsWkRd+gj7Ucq/UEwSbPhZwnADQnfhM0Zen6Ph4uApBaf2MbkXyxu7SDjoA5MsOensetzW91evO/NX90VdAMee7WyGoeob2Olbn2W2tAv4FBzHhNLrWVhgcY9XO/lrref18okntd7Z/0mNaGcpW6r7I74qzK+JreWB27zJeZ6rLQ3RKKrV2PuaWEpy/6h1EzTcNXEfeINnfBV9VRcKDUaDH0s/oUST7NRZVYV+ED4sLzgV3nvoZJ+X0NogBFJtDoohNjHXMVI+CC0scnUBb8fncfTQVh31ojWnort8ZCK3pkL+SltvbXkzlFtcRzC0uLs60Zz9aUOTzLQzXsgkr38DfRBHPNj9hWIb7M/eJvennhrCLrtpKSnXgCSTCOvr5ihcKBix35IIF8yivVlXMc2qK4KSnsQSm5Xh87yg4jM9ry/Ag8bUYnK/NDNyVRAMFl+du+qXa3JCMvEKpBLwXDHgoW5/5hL8b6da7NCF/xTEg+ZMHA1BsMm8kfBRYOp2s5xAWRWMLAHtVG6Sa6BsrDIdA+NmFuSCKGf/zyw0YQtyV0Qr6oP2cglYY5iV7haU9v0E7pxx0PmQL+avnoGBttIkNCxihXzxRR8GLSmsqN1JHgevMTOWCOkwXtXs2Gp2HdLciURb8Gi0ZddJMZaGO1JHWDUWJT0AxwpX/xPPITi2PjGCReNRHkVucUCjYbR8bGVkOooD3SxdczM01com6IY7u+MD0js7DrXT+hc8rO6DJqKhkqMVngMOxd56Aol6PEPWFg3MjcUbBMs8o1Moe0VIABSKQjeVkUIOhpxqvuYh+reYjKuxzIOC1E3zeIM1AivrRQeu6p8xFXUfhdnMaTQkwodiINVDUU9G8rN+Qi2Wlut8301bcPfKMG9v16h3skwr7zP9xxg1lXTTC2+dTHQncUCiyLSgwFzN4e5IZfcOfGYWiXl7FYWJTRyVSzHht9f8U9rk4/rHb8RrN2YBXuPPl8gDt99GDtJFyiIRHgbs+1cJRMNKrGI4KC1tRADDqXqJrARTZ6Ww+mq+Hik2CgEtLnarYm4qfzy+/7KAHKJk+6T0Wm3MXCgUXGCwnOXvgo1jMJFVQPj6eU3PSiiIKaOvjmaWgdEPRZoXY5KsEqXwn0D2y1C8Cj0R2/nlY5L6ruiH3T4Pt1EOhCKaZJ+s723Jc3enTSDuKpi1p07TaEopEWvbFkNGjsI8U521fF92JqFampxYzkxNobR8Ohb8jb16hYIkFv2TX/GFC/ddro4S/wUdJsjbTQDFe35rbXl8sDQ77yC5/7JdK8InCvoui3XqcVj8U70eX6pXB8eU1bTEZX1gaZY5Ozs+N8kgmaJZyyqFYX1qa4SdzS0ucCE0uau9S8YmNpdGsyGwsLaAUIz+5oW3OdNmhRGEfuRIFs/Potc45sfmMyLAovhmhauIeRgDHjg+eDJOPJA1+7rUBKMKR3Wd8+GfHiZNdUDT+vDEUaBuMsE/Ig/7uVA967dHXCV6hh4NC+p3E8OZREICHEwTTffM6bx2FbujWPR8s0HkO/J8IhfDzOoLDviGBvPboW+gMhSDyoDhY275ZFLowaj97aIrbP6/ztlGAHu7oj7FX+vPOBR/VCgGXouPI6D8TCoqUKvcWTjAeEPa9aRTIvN7xcY6Fvkn0t4sCFc3IajzcW65liMf+iwFvFoXEqciV+xOPQldXeqddjvd6+yggFFwWYqBFvpQ3Q1m+1x58gMr3ZT77QFrC3f/zzYXr0v2vnZ3scUEzCUf70V59CQcsvTYCEMVIHhJ+SIi7qDFyhpPt/rnBb0b61dmRxTXNOphpSGNhFg9fHYDAAuMJLzBioa6AU8uG8gbN88+Xr4qAj+nzHlCDwGdzc8IvrG4y+cAvc+vLl62eHBVPjAgxkkggkzObW0/T87jIJ9GHIpHm9xv7Q9JpkU89aTc6JLl6hkP8XD7EimuM+i23tsLgs4U/45y5Xj8wro1xWnYjTQ+Lq5qY0MZjnANM898ZP4VGtLYmksOUFDUIh4qe3dX4REKpywIO1w6RjwrQzhc+zb3nXCS1iYSWyyc3F2jAsXEtkdGSi5wDTKN+KI61pMTc0uzq2Cw9TWipxdHwjZXUUWhYYFTrWhIe4AXXNA9j7Mytf2LRsk/mP6llUrjnU1o6pc2ua5mMNqdS+WltcxWpykWhafOb2mxmc3MqoWmpzfBt7HTLwulQ1Xs+ag/CAWYa0htH5a2q4u5tLwjFjBZF0jgZH9WWgMLvtpfW1rXkQkpbTxLTJWleNjZEQlshvOGLo+C9en/FbguaEN2Qe9f91y66okD6mVf7IqXeKCbGsPKyqGXTYzRK4qgJlXtOa2O5NY2wJAhBBgXnQDFF0xMaBflMOlaryVC7WNvCAuOwINRkHF7iRK1ibxRjYlRbwJopNyHCpCR4XSWtTU2g1DYnNrVVvD+qzQyBQpU7kPNqCYkT0ATOrlSnTg+JArhNqCizp1wkRsdJKBZZFsbX32fF+FJCTC3Rq+xSJp6bEEspkf8wk5kbE9mZD1l6I7MUaueCa7jKeYXLRFK9d93rDM0wQMydz0VnsB+1vjr8roq+pNedVyksQ1o3RbvzjPkhCALeey76UDzzrDZvlbO7PRyBjIkoHNvDGYh2DBEH9To95yIzRtRo4DgVXKJe6dy/kyGjl52q164k57t0bZEqrvZOUCBvuJAI3rrjPEGuG+T49Tq9UPCq4lg0Trc+Jt7zdnosp8biIpr9MEL/HmNgMbyN8jTB0h2P4hP0LNpRW6Rjldq6uifnFQcAGrx1J7S30W8+vij2Id4AAAaCSURBVJz3nIuR/NrGSCy3IGIbM1hijSZzm7mkWF5IzSc2M+Pa/MZGRkznVj9sYGUsp8GyJMbIosxDnc1vjLbPF9y9CvwNAoEld/I3lGp6Nm197qlpyT0aFWJ0k3yN9diolspqq5NrWjylrc2SKRnXNiY1Lb6kpXK8EJ7T1teXtAQZevJXCMXC8lr7thhdRUL+jhHvoshnsL4ACFjwASjeidjmokhp0QwJwwQ2YqTJUSQUGfrHpDYjRnwUMzNzQDGtUIwTV7UtQcoqIiHebqGcVx7B80HA6H3uj2JJG8mTwzQPf3BWTAJFvo5ihVDkyCS+b3LUFFmXHFBMieUOG3inql5dKQofQ6xBhibsw+qNQluAL7i5SSjIRSdnaoOc8VQTxaQ2PQ/jDRRKuhMkQPQPcBUX/MqWANXu2fWTFoXVLwiCQ6XeKFZQLD+2PL4yJaJTqWhsapn0bWY5LqZTielUmp6OiImVzCYXiKRIv6ayIrk8MZaiZ+OTK+0lky4KHUGfuBboJWE8M5OTWyK1tBzusyiT4AMgVUI8BAoHUCmcYw+r/+efhQJ+4mrIJqGsaHGSLyYj1Ewwhq0v/yzy1PX9zrNQkNM4qJ9XAIaqg7LEXsiADoeCU1hNttkc5PA+E0V4crlMokaeeagyCcwFOawUVnOxvGn3LUro9aNJ32iNk1vRGYnmOzZ7h6MyVrykd9qfzxUDqRwNouvPRbt4g+X8npa+1+/5jTwmZ2enspNoJh+F06Tays/HJnz/Iur/539gIOlnvKR9238yGISDHE2E8zV/O/y4J+We0zuq7fV7k/Hp9fkP6ZyIzmRnx2fH388sT8xMisz6MgV29HSGdGtsfmZFjM3MjGTmZybH1kPsrJK1e07bXPdPxDpgpsuiqaJS+5gZUfTZptHr9+ZjczGxmKCpWMznUiIzK1JjYj6ZE/TvM/DE59NiZVxkxufFyMzEmPiQEe8Hng9BEcXJA2rr+q+i4ihyYiZlVuzSjXV1JyzXtY57wuiDgiYkGU8m5vPkV2QyYmpczGZmhJiJrQviqClycKdFLDkpxOIYvZUQywOjQgpSIeBcJhHpzh6m0kyH3Lsh4tjmxwJFJmdVpHsOutQU9UfxPj6VmtpITKQmJ7KTqUxmAigmk6nZ2dXYeoZQzI5/yM6MrY+8n/qQIRQrSZEajILGgjIJEnDc127jobu/8+WSLZ2DGsFdF2lQ8l5QeLvdy9L0+sF8VGSzdL+zWYp7otl4HOHQSEykST3Fp/llVoykKVpK5/GWencQCkRKKHTUUR3fnZuKl192TJUjtIsXHsfnQjw8IKnrlXpYmr6/OvvCLcg5mwav0DJk23312Usxk8nOh/2pgH4OOrYjWcSI7L10V259fzX+FTrSurivFOu110FxjwPSTEj2YZHLLhEzNXsFECNim0aPTa8vP8yBBAG3pOyojidm+rzDE2SSVD96hMGq79XRxV+vWMC7a6lvjgF7Js90OCSt+9so1vl8aKopscFMurSam7p1ufezh1D3sWsK7pujwMDurpAHOVAOt6lSlVuf2UQgN2OX9ol7XCOw98tQ2zRIwLuu+n1zFCAScLrNvP3F4QJfn5nYgbLtbWxvbSWLJg/1OqK7gL8KCoR9uiE9Tkhh7Ods5lhT2ccFlFN0fMUVFfJeDNflWPEtoHA93v4id3lAipnAVtBM+8JwjY4deGxpEJ64RqH4RubC4rCP9BQUp1pg5Ptrm9ue5O0xHXMBHxLKTcfufMf0qa4ZXgOEUC3HiKnI2z73nVcHm476brzD7nyU1FtBAXdg5vvurvpqRHzPFlyKHy85EoqwmbvxpNvva2qbhhC7ZpBeTy5oLOUTsn9HZz9xooMwmNt7Qrpq9bU76dH4L/+TD5r77d+aVHIG7K76qmSdVSpnD9auzcv09vEtSbTetw9DLJ2e/te/ptPp9C8/BOjfXrEmhyz4zwhfJZbqmZkGNibKpqfz2X+ls0T/69ff/vj1h99///1XguG8Xk0OjblCpswQhaIduaaw2hqIIj2djo/88kssPjKSv/3fv/32w29//PHr75iM16ssUmUTJOA3p7d+Jn3AN2gustmR//Nf+fRI/pc/fv3th99//YNA/FB6/fooXbfY2wjReiUGkUj/1/9N4OH/BeTiTVTche8dEyP9FDt6wIMX0FGvZPWeQTqHfaQVblTq3Xw92x0c1XBdfNBMpnqmu7prNZLW9PD/AcCSCSoBeSPuAAAAAElFTkSuQmCC',
      'description': 'Geometric Course'
    },
    {
      'title': 'Maths Course',
      'image': 'https://d3jmn01ri1fzgl.cloudfront.net/photoadking/webp_thumbnail/626fc6eadf197_json_image_1651492586.webp',
      'description': 'Maths course'
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.network(_movies[_current]['image'], fit: BoxFit.cover),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(0.0),
                          Colors.grey.shade50.withOpacity(0.0),
                          Colors.grey.shade50.withOpacity(0.0),
                          Colors.grey.shade50.withOpacity(0.0),
                        ]
                    )
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 500.0,
                  aspectRatio: 16/9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                carouselController: _carouselController,

                items: _movies.map((movie) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 320,
                                  margin: EdgeInsets.only(top: 30),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.network(movie['image'], fit: BoxFit.cover),
                                ),
                                SizedBox(height: 20),
                                Text(movie['title'], style:
                                TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                                // rating
                                SizedBox(height: 20),
                                Container(
                                  child: Text(movie['description'], style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey.shade600
                                  ), textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 20),
                                AnimatedOpacity(
                                  duration: Duration(milliseconds: 500),
                                  opacity: _current == _movies.indexOf(movie) ? 1.0 : 0.0,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(Icons.star, color: Colors.yellow, size: 20,),
                                              SizedBox(width: 5),
                                              Text('4.5', style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey.shade600
                                              ),)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(Icons.access_time, color: Colors.grey.shade600, size: 20,),
                                              SizedBox(width: 5),
                                              Text('10h', style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey.shade600
                                              ),)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.2,
                                          child: Row(
                                            children: [
                                              Icon(Icons.play_circle_filled, color: Colors.grey.shade600, size: 20,),
                                              SizedBox(width: 5),
                                              Text('Watch', style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey.shade600
                                              ),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      );
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}