Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E8012F875
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 13:46:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=s/IWj7Bi5uoPhtoQZijTWTgFJ81n6oGhy57PTtE1ETc=; b=NfO
	4a4NesGhThbnmjYYe5hoZNYHiFuYQSf53UqrxkVOuqBfxii96/cvQvtdS3qhDja+eVRJUUFyDS267
	xF/nCO6fGHzMh1bgZlZg5yIu0T7zyU4kyJMJkTo3ioeCtYbEGMSzVxxvCE+tZIHpGa5x6WnCJMD9g
	L9nPeKUiPdWDcezU7dJ1mFzL4IcZkMgqgH9pStBSNPYhWhlMgMv8grSg7Jv8KMXLKESWHvVE0TYg7
	PERIhgEJYl8nUa6TUSp7f2t+rXBMXFT/PzMwhlFyL0ZV/t6WxVHmTzRR5qb9rwvdK0sC2g6wxHFf7
	uNnitP0GwUkTm9dtZDb4bgxOUPKwQhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inMLM-0005VO-SL; Fri, 03 Jan 2020 12:46:20 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inMKa-000515-AG
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 12:45:34 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mn2Fb-1jTWla3C2J-00k5D1; Fri, 03 Jan 2020 13:45:29 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>, "'Oskari Lemmela'" <oskari@lemmela.net>
Date: Fri, 3 Jan 2020 13:45:29 +0100
Message-ID: <007a01d5c233$ae215b80$0a641280$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdXCMuEDfhOzNwcnTPmy7I9N1f6e+w==
X-Provags-ID: V03:K1:i+DTdWC2jpVXxTZbIHG57Y00G9yYvUZb17ku9i60AwWgh60DbYi
 tJbHpWdNBc8UB3PaCY7/AIpb5xVl8bG9vP+oj2Tu8vHtYBHjQGoDgq08L28M6daVRIex9GZ
 XZ55hGDZk/+73PuYOm7Bjcc8NzSxQTBkzo+hATy3ajwE6bUCcENFyCqa071NZnxIVSknmKe
 GMC3pQ1V3i+I4zTuS6/Ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XEDF3spFyQE=:IunJINg6/cUho8d8FIjayE
 kwmJKmULViu2cbob4P0Bzlpxr37inW7yoWd57nJ7MHnw85WQHZaQ7COUJXk2Jq05sdgnyVGK3
 WIqF/Jjk8GiJRkUv0ux2u1hHqXcNIkcZhSJd+uZGISp0TTMmMnG/MIxC+d3nCiIsxJc5SziTV
 fXxdm+Gtpc7IdLY0NN2He57SeW+ZdUS5Z29I94p8FY8drlRUktmFVUXCwDxNnS8OMqJic+/Mi
 G6kW/MBSHPSA8BF/ILy7vmvOPfvIcGzP0usUGCebNSUyQ3nnf95357tleCZwracDUNw/bGMZF
 ogQ7f9/ey2R8mOn1fJCbd808Y4LolTQ91thQG2EjwTxOX7wz/3ICeaRWzmyCR5VCJ1A8KMbJw
 U2hIyyTeyge2/z2x1I85vm/7/yUC5QR64CA1GoqrPfbMLrVvIiJhPxSg2miiJYZT42nimXorw
 D/Y8vV7xQcuUT1+sNfJ7n/eeKjr7tfNPERNPePseWuCcwmCB16R1a1zdrKT3VQW+M/LTFkres
 tDMOmiV0kY+FF58dKVrVlVss5Ccw0vQE6oKV2RCZmtNI3NnPMfh4DNz86Tt6iL7VHs1A0V3IA
 NWIzcWfH+7evGPWFrwaF+ttBFJQ9YRADqeYbgldl5R3s/VledWFJFh6xXEEFT081+xHy+Kp4G
 NTjZOEOF7NqQYqZuUSfIXBCghc3GswL4zZz46VoG482feWHu47hB9S1Jo6JtJHT1/z+/3b3TR
 2pDX6WeWPpnb5s0wY7x3SF7WZxfk8bCP9JQiI0FyUNpodZ/nkwuq/s2tyHSbZNZ5z2rOkFFJ1
 7t7hQqeCu4YMecPGcVqWdB3bPYgklkjbA+MS6FO1FHzlpAyNbMfT+21/ZERSjdNRig9fZk5Vm
 XWhSjvuvw7op548xRCU7Kex/v4EgKHUKC3qcb6jes=
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_044532_660547_5958ADDF 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [OpenWrt-Devel,
 5/9] sunxi: add support for pine64 lts
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
Content-Type: multipart/mixed; boundary="===============2578934368853471768=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2578934368853471768==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ZjRVQ4oRZshmeO=-="

This is a multipart message in MIME format.

--=-=ZjRVQ4oRZshmeO=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I do not have the old e-mails for those changes, thus I cannot respond corr=
ectly:

https://patchwork.ozlabs.org/project/openwrt/list/?series=3D86042

sunxi target has seen some changes in the meantime, particularly the split =
of DEVICE_TITLE and the calculation of the DTS name.

Please submit a new patchset and take care to also address the other review=
 comments on your initial submission. I will mark the old one with "Changes=
 Requested".

Note that I won't be able to review it, so please do not expect this to be =
merged directly after resubmission.

Best

Adrian

--=-=ZjRVQ4oRZshmeO=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4PN2MACgkQoNyKO7qx
AnB3Ug//Qp6VnXUadEhSiuI07niNadN2Ww13fw+RbrwKwKnwiTRuUXbQ2xJ6zpe4
8g61L1rKS+Ur7DAZk7AyEO4Ebv5SZe07aLDuxGzGa5/rVmRCyvm539yCi2SU82AN
0B5F+KBUNVP8E16I17GzhAlmVLpfC2Vf0xnmFKjPqehoyYSbRr9dztdwm5bH2k/V
y+QBnWTtsT8CS63p8TR12c2l+ONvbW9RV54asKEHYxtbQ3KVnc/q+T6RC56rTl7i
s3uiELcbrUfDABMmw4UCyydi3dg6r7IU++Aj7UOKqgjuxQ50LcqE3fIs7msrHKfO
OFIjC+QTJkiHsE4PafsC7XVCv8aH5+0+nPAstCb8ofKPn4D5AH7Ymnte2Ua0kmyK
KChfwRLtOJXBSdM5zgxIeHiZtRV+oqvEwQ1KZqkmD0Rcmvmrcn9DbnBiKcVxyMU9
3vSTB6QBqzpSO+RzuEUDKV7viE4a3QILl4HlIBmFf9fvgmYaZf+eDX3QEtTh5c35
NZviR1cbDZUDiJP7jlnXC+a3+/eB7vFxQIwYXrdo3dEyWIKyS8y9ofVJdP5SpcXi
8VU4lD8bcyVSqpgh+FmgLU0mRgR16af/7KdyU8u2VjoKQ3kh6KM7pXQBpXnWqr/m
u91gOCXuqbw3Svg5kHetsC82gzif3BgEymw0Xb3b0uNi3k+nDMs=
=VYM7
-----END PGP SIGNATURE-----


--=-=ZjRVQ4oRZshmeO=-=--



--===============2578934368853471768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2578934368853471768==--


