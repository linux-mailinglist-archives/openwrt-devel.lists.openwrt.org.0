Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980D4C165D
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Sep 2019 18:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Td/GRIgYGhhc5wvsRCzUlN/T0ARBIjNHmGHEi9r/vGY=; b=P/KQAumxCzKhglHpI/kb7Nw8I
	FRJSUXjTeg1miuTZG1r0PwpKl6wY0pCp8k6QtaMOajgJHvg/131Ies/KUN9v65Hp97ds1GyfxCPvP
	CBp+8YF2WauqpL9ajHN9N4JgmnzH3HsfofmPJDyWoPZbzEKAoKON89mr0GHEyMa1vBoVFuS7hU2Fq
	cocQfraEBnulyMiF3wA13ZD2fsWnq0tEnN3gjuZkZnNXSRDUodTDwg2bJujSFlEoZ8MLdJji3kY2S
	6kcai3//M3tq2dZ11ueMb5pwpeNzQDAZ/evm9S8fin6VUWtDMxDcra54uCG3f/xcmy8BUrYFmrntg
	rYELWWgZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEcPl-0000tD-CI; Sun, 29 Sep 2019 16:51:17 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEcPb-0000sZ-S9
 for openwrt-devel@lists.openwrt.org; Sun, 29 Sep 2019 16:51:10 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id E9E26A1B94;
 Sun, 29 Sep 2019 18:51:00 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id uz4NJnHxi0_a; Sun, 29 Sep 2019 18:50:57 +0200 (CEST)
To: Serge Vailugin <vasilugin@yandex.ru>, openwrt-devel@lists.openwrt.org
References: <e3820a48-cb98-0947-ee23-29169a5d4ff9@yandex.ru>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 mQINBFtLdKcBEADFOTNUys8TnhpEdE5e1wO1vC+a62dPtuZgxYG83+9iVpsAyaSrCGGz5tmu
 BgkEMZVK9YogfMyVHFEcy0RqfO7gIYBYvFp0z32btJhjkjBm9hZ6eonjFnG9XmqDKg/aZI+u
 d9KGUh0DeaHT9FY96qdUsxIsdCodowf1eTNTJn+hdCudjLWjDf9FlBV0XKTN+ETY3pbPL2yi
 h8Uem7tC3pmU7oN7Z0OpKev5E2hLhhx+Lpcro4ikeclxdAg7g3XZWQLqfvKsjiOJsCWNXpy7
 hhru9PQE8oNFgSNzzx2tMouhmXIlzEX4xFnJghprn+8EA/sCaczhdna+LVjICHxTO36ytOv7
 L3q6xDxIkdF6vyeEtVm1OfRzfGSgKdrvxc+FRJjp3TIRPFqvYUADDPh5Az7xa1LRy3YcvKYx
 psDDKpJ8nCxNaYs6hqTbz4loHpv1hQLrPXFVpoFUApfvH/q7bb+eXVjRW1m2Ahvp7QipLEAK
 GbiV7uvALuIjnlVtfBZSxI+Xg7SBETxgK1YHxV7PhlzMdTIKY9GL0Rtl6CMir/zMFJkxTMeO
 1P8wzt+WOvpxF9TixOhUtmfv0X7ay93HWOdddAzov7eCKp4Ju1ZQj8QqROqsc/Ba87OH8cnG
 /QX9pHXpO9efHcZYIIwx1nquXnXyjJ/sMdS7jGiEOfGlp6N9IwARAQABtCFIYXVrZSBNZWhy
 dGVucyA8aGF1a2VAaGF1a2UtbS5kZT6JAlQEEwEIAD4CGwEFCwkIBwIGFQgJCgsCBBYCAwEC
 HgECF4AWIQS4+/Pwq1ZO6E9/sdOT3SBjCRC1FQUCXQTYzQUJA5qXpgAKCRCT3SBjCRC1FT6c
 D/9gD0CtAPElKwhNGzZ/KNQL39+Q4GOXDAOxyP797gegyykvaqU/p0MOKdx8F2DHJCGlrkBW
 qiEtYUARnUJOgftoTLalidwEp6eiZM9Eqin5rRR6B5NIYUIjHApxjPHSmfws5pnaBdI6NV8t
 5RpOTANIlBfP6bTBEpVGbC0BwvBFadGovcKLrnANZ4vL56zg0ykRogtD8reoNvJrNDK7XCrC
 2S0EYcGD5cXueJbpf6JRcusInYjMm/g2sRCH4cQs/VOjj3C66sNEMvvZdKExZgh/9l9RmW0X
 6y7A0SDtR3APYWGIwV0bhTS2usuOAAZQvFhc+idSG0YrHqRiOTnWxOnXkFFaOdmfk99eWaqp
 XOIgxHr6WpVromVI+wKWVNEXumLdbEAvy1vxCtpaGQpun5mRces5GB2lkZzRjm90uS9PgWB1
 IYj1ehReuj0jmkpan0XdEhwFjQ3+KfyzX7Ygt0gbzviGbtSB2s1Mh0nAdto9RdIYi3gCLQh3
 abtwk6zqsHRBp1IHjyNq60nsUSte4o1+mRBoB6I7uTkxqJPmynwpmAoaYkN2MRO8C1O09Yd4
 H3AgFGZBXpoVbph8Q7hE33Y9UrElfiDsvdj4+JVu1sdPPGFWtpjpe5LeoXzLANAbJ2T+Y68U
 gtsNFCbSKjXsRJlLIHR1yHQbq2VdUDmsUZaRbLkBDQRbS3sDAQgA4DtYzB73BUYxMaU2gbFT
 rPwXuDba+NgLpaF80PPXJXacdYoKklVyD23vTk5vw1AvMYe32Y16qgLkmr8+bS9KlLmpgNn5
 rMWzOqKr/N+m2DG7emWAg3kVjRRkJENs1aQZoUIFJFBxlVZ2OuUSYHvWujej11CLFkxQo9Ef
 a35QAEeizEGtjhjEd4OUT5iPuxxr5yQ/7IB98oTT17UBs62bDIyiG8Dhus+tG8JZAvPvh9pM
 MAgcWf+Bsu4A00r+Xyojq06pnBMa748elV1Bo48Bg0pEVncFyQ9YSEiLtdgwnq6W8E00kATG
 VpN1fafvxGRLVPfQbfrKTiTkC210L7nv2wARAQABiQI8BBgBCAAmAhsMFiEEuPvz8KtWTuhP
 f7HTk90gYwkQtRUFAl0E2QUFCQOakYIACgkQk90gYwkQtRUEfQ//SxFjktcASBIl8TZO9a5C
 cCKtwO3EvyS667D6S1bg3dFonqILXoMGJLM0z4kQa6VsVhtw2JGOIwbMnDeHtxuxLkxYvcPP
 6+GwQMkQmOsU0g8iT7EldKvjlW2ESaIVQFKAmXS8re36eQqj73Ap5lzbsZ6thw1gK9ZcMr1F
 t1Eigw02ckkY+BFetR5XGO4GaSBhRBYY7y4Xy0WuZCenY7Ev58tZr72DZJVd1Gi4YjavmCUH
 BaTv9lLPBS84C3fObxy5OvNFmKRg1NARMLqjoQeqLBwBFOUPcL9xr0//Yv5+p1SLDoEyVBhS
 0M9KSM0n9RcOiCeHVwadsmfo8sFXnfDy6tWSpGi0rUPzh9xSh5bU7htRKsGNCv1N4mUmpKro
 PLKjUsfHqytT4VGwdTDFS5E+2/ls2xi4Nj23MRh6vvocIxotJ6uNHX1kYu+1iOvsIjty700P
 3IveQoXxjQ0dfvq3Ud/Sl/5bUelft21g4Qwqp+cJGy34fSWD4PzOCEe6UgmZeKzd/w78+tWP
 vzrTXNLatbb2OpYV8gpoaeNcLlO2DHg3tRbe/3nHoU8//OciZ0Aqjs97Wq0ZaC6Cdq82QNw1
 dZixSEWAcwBw0ej3Ujdh7TUAl6tx5AcVxEAmzkgDEuoJBI4vyA1eSgMwdqpdFJW2V9Lbgjg5
 2H6vOq/ZDai29hi5AQ0EW0t7cQEIAOZqnCTnoFeTFoJU2mHdEMAhsfh7X4wTPFRy48O70y4P
 FDgingwETq8njvABMDGjN++00F8cZ45HNNB5eUKDcW9bBmxrtCK+F0yPu5fy+0M4Ntow3PyH
 MNItOWIKd//EazOKiuHarhc6f1OgErMShe/9rTmlToqxwVmfnHi1aK6wvVbTiNgGyt+2FgA6
 BQIoChkPGNQ6pgV5QlCEWvxbeyiobOSAx1dirsfogJwcTvsCU/QaTufAI9QO8dne6SKsp5z5
 8yigWPwDnOF/LvQ26eDrYHjnk7kVuBVIWjKlpiAQ00hfLU7vwQH0oncfB5HT/fL1b2461hmw
 XxeV+jEzQkkAEQEAAYkDcgQYAQgAJgIbAhYhBLj78/CrVk7oT3+x05PdIGMJELUVBQJdBNkF
 BQkDmpEUAUDAdCAEGQEIAB0WIQTLPT+4Bx34nBebC0Pxt2eFnLLrxwUCW0t7cQAKCRDxt2eF
 nLLrx3VaB/wNpvH28qjW6xuAMeXgtnOsmF9GbYjf4nkVNugsmwV7yOlE1x/p4YmkYt5bez/C
 pZ3xxiwu1vMlrXOejPcTA+EdogebBfDhOBib41W7YKb12DZos1CPyFo184+Egaqvm6e+GeXC
 tsb5iOXR6vawB0HnNeUjHyEiMeh8wkihbjIHv1Ph5mx4XKvAD454jqklOBDV1peU6mHbpka6
 UzL76m+Ig/8Bvns8nzX8NNI9ZeqYR7vactbmNYpd4dtMxof0pU13EkIiXxlmCrjM3aayemWI
 n4Sg1WAY6AqJFyR4aWRa1x7NDQivnIFoAGRVVkJLJ1h8RNIntOsXBjXBDDIIVwvvCRCT3SBj
 CRC1FZFcD/9fJY57XXQBDU9IoqTxXvr6T0XjPg7anYNTCyw3aXCW/MrHAV2/MAK9W2xbXWmM
 yvhidzdGHg80V3eJuc4XvQtrvK3HjDxh7ZpF9jUVQ39jKNYRg2lHg61gxYN3xc/J73Dw8kun
 esvZS2fHHzG1Hrj2oWv3xUbh+vvR1Kyapd5he8R07r3vmG7iCQojNYBrfVD3ZgenEmbGs9fM
 1h+n1O+YhWOgxPXWyfIMIf7WTOeY0in4CDq2ygJfWaSn6Fgd4F/UVZjRGX0JTR/TwE5S2yyr
 1Q/8vUqUO8whgCdummpC85ITZvgI8IOWMykP+HZSoqUKybsFlrX7q93ykkWNZKck7U7GFe/x
 CiaxvxyPg7vAuMLDOykqNZ1wJYzoQka1kJi6RmBFpDQUg7+/PS6lCFoEppWp7eUSSNPm8VFb
 jwa1D3MgS3+VSKOMmFWGRCY99bWnl2Zd2jfdETmBFNXA94mg2N2vI/THju79u1dR9gzpjH7R
 3jmPvpEc2WCU5uJfaVoAEqh9kI2D7NlQCG80UkXDHGmcoHBnsiEZGjzm5zYOYinjTUeoy3F0
 8aTZ+e/sj+r4VTOUB/b0jy+JPnxn23FktGIYnQ+lLsAkmcbcDwCop4V59weR2eqwBqedNRUX
 5OTP93lUIhrRIy3cZT/A5nNcUeCYRS8bCRFKrQKEn92RFg==
Message-ID: <3a340b55-3562-08d0-f697-92ca5a5ecc52@hauke-m.de>
Date: Sun, 29 Sep 2019 18:50:36 +0200
MIME-Version: 1.0
In-Reply-To: <e3820a48-cb98-0947-ee23-29169a5d4ff9@yandex.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_095108_213709_C7FBF487 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/3] kernel: rtl8366_smi: explicitly
 set phy addr for switch
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2554983657500218105=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2554983657500218105==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="WoW8pF7P7mHK7bA5FgyLVGeP16DQt9PEn"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--WoW8pF7P7mHK7bA5FgyLVGeP16DQt9PEn
Content-Type: multipart/mixed; boundary="HpXoz02F2AjGWU9GH5aqRbVsS706KsAcO";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Serge Vailugin <vasilugin@yandex.ru>, openwrt-devel@lists.openwrt.org
Message-ID: <3a340b55-3562-08d0-f697-92ca5a5ecc52@hauke-m.de>
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/3] kernel: rtl8366_smi: explicitly
 set phy addr for switch
References: <e3820a48-cb98-0947-ee23-29169a5d4ff9@yandex.ru>
In-Reply-To: <e3820a48-cb98-0947-ee23-29169a5d4ff9@yandex.ru>

--HpXoz02F2AjGWU9GH5aqRbVsS706KsAcO
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Serge,


On 8/27/19 11:49 AM, Serge Vailugin wrote:
> By default rtl8366_smi use phy addr 0 at mii-bus to access switch
> registers.
> This patch allow to set it explicitly in dts-file:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0rtl8367 {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible =3D "realtek,rtl8=
367b";
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 phy_id =3D <29>; /* switch a=
ddress at mii-bus */

I am not sure if we should use the reg property for this instead. Did
you check other drivers?

> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 realtek,extif2 =3D <1 0 1 1 =
1 1 1 1 2>;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mii-bus =3D <&mdio>;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cpu-port =3D <7>;
> =C2=A0=C2=A0=C2=A0=C2=A0}
>=20
> Use default 0 address if not set.
> Backward compatibility tested on tplink archer c2 v1 (rtl8367rb switch)=

>=20
> Signed-off-by: Serge Vasilugin <vasilugin@yandex.ru>
>=20
> --- a/target/linux/generic/files/drivers/net/phy/rtl8366_smi.c
> +++ b/target/linux/generic/files/drivers/net/phy/rtl8366_smi.c
> @@ -256,7 +256,7 @@ static int __rtl8366_smi_read_reg(struct rtl8366_sm=
i
> *smi, u32 addr, u32 *data)
>=20
> =C2=A0int __rtl8366_mdio_read_reg(struct rtl8366_smi *smi, u32 addr, u3=
2 *data)
> =C2=A0{
> -=C2=A0=C2=A0=C2=A0 u32 phy_id =3D MDC_REALTEK_PHY_ADDR;
> +=C2=A0=C2=A0=C2=A0 u32 phy_id =3D smi->phy_id;
> =C2=A0=C2=A0=C2=A0=C2=A0 struct mii_bus *mbus =3D smi->ext_mbus;
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0 BUG_ON(in_interrupt());
> @@ -293,7 +293,7 @@ int __rtl8366_mdio_read_reg(struct rtl8366_smi *smi=
,
> u32 addr, u32 *data)
>=20
> =C2=A0static int __rtl8366_mdio_write_reg(struct rtl8366_smi *smi, u32 =
addr,
> u32 data)
> =C2=A0{
> -=C2=A0=C2=A0=C2=A0 u32 phy_id =3D MDC_REALTEK_PHY_ADDR;
> +=C2=A0=C2=A0=C2=A0 u32 phy_id =3D smi->phy_id;
> =C2=A0=C2=A0=C2=A0=C2=A0 struct mii_bus *mbus =3D smi->ext_mbus;
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0 BUG_ON(in_interrupt());
> @@ -1558,6 +1558,14 @@ int rtl8366_smi_probe_of(struct platform_device
> *pdev, struct rtl8366_smi *smi)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto try_gpio;
> =C2=A0=C2=A0=C2=A0=C2=A0 }
>=20
> +=C2=A0=C2=A0=C2=A0 of_property_read_u32(np, "phy_id", &smi->phy_id);
> +=C2=A0=C2=A0=C2=A0 if(smi->phy_id < 0) {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 smi->phy_id =3D MDC_REALTEK=
_PHY_ADDR;
> +=C2=A0=C2=A0=C2=A0 }

You should check the return value of of_property_read_u32() and set it
to MDC_REALTEK_PHY_ADDR in case it returned an error like this:

if (of_property_read_u32(np, "phy_id", &smi->phy_id))
	smi->phy_id =3D MDC_REALTEK_PHY_ADDR;

> +
> +=C2=A0=C2=A0=C2=A0 dev_info(&pdev->dev,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "switch phy addr=3D%d\n", s=
mi->phy_id);
> +
> =C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>=20
> =C2=A0try_gpio:
> --- a/target/linux/generic/files/drivers/net/phy/rtl8366_smi.h
> +++ b/target/linux/generic/files/drivers/net/phy/rtl8366_smi.h
> @@ -64,6 +64,7 @@ struct rtl8366_smi {
> =C2=A0=C2=A0=C2=A0=C2=A0 u8=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 dbg_vlan_4k_page;
> =C2=A0#endif
> =C2=A0=C2=A0=C2=A0=C2=A0 struct mii_bus=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 *ext_mbus;
> +=C2=A0=C2=A0=C2=A0 u32 phy_id;
> =C2=A0};
>=20
> =C2=A0struct rtl8366_vlan_mc {

Hauke


--HpXoz02F2AjGWU9GH5aqRbVsS706KsAcO--

--WoW8pF7P7mHK7bA5FgyLVGeP16DQt9PEn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl2Q4OwACgkQ8bdnhZyy
68cHcwf/Yfc0R43o9pW+ETHFqqlJPlCSVOFK6vwkJoQ/SHrluBuuFOHD/j9/CK4m
NaaIk7qI1kjB/OJsLdUU8AbQ6Mn+uZmbc3JI51v1CAPViMsFDakAvgzUeM6wvUP1
W1dc6aJ9hUmY/fNrn1ZMnfKmOxBYbeW0z6NiTMtOpklDkscdPa9cpDDWZS/KQl0Z
ZFZznOHg/oLMox7NGBguo9gZr509MHDy5iXyRVlvkRLolAsmc537jG7PFp0JGMa7
tdfwAftBbhZ2+Ikjo3Y3zJpYZyimYtveU8Rf3gsqzudYeD0ZzIucXK+r/UVBFCdY
KHfkwznAb1EkiRUJLL+y7cu4LSpqsQ==
=SPFj
-----END PGP SIGNATURE-----

--WoW8pF7P7mHK7bA5FgyLVGeP16DQt9PEn--


--===============2554983657500218105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2554983657500218105==--

