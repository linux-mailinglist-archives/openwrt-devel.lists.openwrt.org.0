Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8E210CEB7
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 20:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VXuwjhJ2kqW+RV+xzGLQ9HYUc/mER7q1XGY7iJGFFQA=; b=IyfFPLqVbLmLgttvU/fz7hBAj
	sQjaWTUzM2z2QHMrJQqeFg3rrTsCA5nnqX7A1RSPJ1DhzszFhO8OUs4XlJ2W9i0maifDhDl0D+zNc
	CwqD4fHYPzV9bVXR1ogGyhocv2fC3QiiubimqC46fZCyislHdWub9EHKxXnCThVtV7G0xgYyv4NFz
	ZRE845/5wFeJYiHyQjWdMc5zgvcsM9DN3ESqPSLIK7apsHW3JQDMxfXHwRnhr+Z99PSin2ZqQJeji
	1g64jbHjZuhXxB1n+aArTYT71IKc8ZLQuNRwH9YsbmZ/LHygWgKEyY6leZVi2Ys003ZQd95ymfjX9
	46qgx1YfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaP1Y-0001W4-4k; Thu, 28 Nov 2019 19:00:20 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaP1Q-0001VR-4s
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 19:00:13 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MF2YC-1iYD9E3TK4-00FQOb; Thu, 28
 Nov 2019 20:00:08 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
 <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
In-Reply-To: <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
Date: Thu, 28 Nov 2019 20:00:07 +0100
Message-ID: <01bc01d5a61e$0dd21880$29764980$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKHHZl+c6tYe6NxV90oTdPoalDB0gKX3rv8AN9zaFmmIkJucA==
X-Provags-ID: V03:K1:SHKNM+ajfrPhO1a2CDHbNIsaFLjMl543GzTfHwflT/W148ER7T5
 PSrMJjNFe9t120yE20iCMXXUbmfLgqi+dsnbeqLahrrEnninF3UHFOu9Zv9ccsoFDaskauq
 gj3aiX6UX/3DxB8hPjuH4brhPdQALtrJG7QVT8/ga1rJx9Sg3RTRJ2mIKmH3mLV6/2ezZt9
 FMGEMDbQRfgNoNyIbLMiw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o68Rz3DCq/8=:oVDzU8wfpg8ktXML62yzTd
 eiagP9FzlAKXPySzrfN3psG374/ePWq630kujhpNw7SzmtzfhW4nxEbp1S6rBuTpOdXq9E3hA
 q5UMjC+JjTr5Pq3ItEO2sqFLcV8bqeyexOha7lV2sveXRlj4/j6kCehHANYQrb+1fli1jfyql
 mgzF3Ef0l/zw82Z7dN4vGxM5SX5fE9gtMXNSdISeySmvifiW4gzeyspM1m7et7OWzb6TVmDY5
 y0K504FX+fgG/FImt/P05dBhViA6JEkL9AMSYLKjlPq7GJMxIqT5978pzc0zUZy+CHybyt9Eg
 1yWA7XsA3V8KgyS9YBOk9LAWk+f5oGMn3Io1SmB57gRotAcYKdy8d8n5yobDgo68gQcllL/d9
 Tfodw6K9K+8d5mDnD5v9Sa8ELWjqUXh+wYZphB5iJxYC0ZTpM38cVlLlg+7hnwKb9UVm3aptZ
 KFGiNBDDy0IReDPptExD7V/FUs9NabKnVZrQKtveL3Rcl8akpX7SZHMSpXVl9ihY1ekpaXibk
 DzG72ed/I0IPtKeLkfxExFgjcuVJsyRt/5QOUcwqC7IDoCPd1XnucBeo5OGmTtTYCul6RjfBW
 mtWVzxJpe9VoW7uZHAeShsgB+vqeK396kBP1CPnUBzxBB47WaYpSqCtIO3PzZCCNJi787pEQm
 ai4ETDs93sE4uP4Xwe1aFgH3pJ/TRaThMGrh1/xd0YLo9G+A/0jT1KhwySIiREiZ3it00i7U5
 4iUowOijtye5xYCE21igfr9WJZNNcnBybovytai4nIe3Fs+h48N7ohpz6kJW8gDRSqJa3WUxP
 eedELgLkhuN9NXjiTrv9W+m4VuOHRCKCzB95VznyH3z7zhped+jmQe2RObrP4SOwTzLPkVeK+
 fGvPhENunwCvpeOxy1W4bAXXFk5p9lN+60h5LXudk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_110012_483868_33CEE81D 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============7121468353922995039=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7121468353922995039==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=AvqSCp/LxPxK33=-="

This is a multipart message in MIME format.

--=-=AvqSCp/LxPxK33=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> From: Hauke Mehrtens [mailto:hauke@hauke-m.de]=20
> Sent: Donnerstag, 28. November 2019 19:42
> To: Adrian Schmutzler <mail@adrianschmutzler.de>; 'OpenWrt Development Li=
st' <openwrt-devel@lists.openwrt.org>
> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>
> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:=20
>> Hi Hauke,=20
>>
>>> The following are still on kernel 4.9:=20
>>>=C2=A0 * ar7=20
>>>=C2=A0 * ixp4xx=20
>>>=C2=A0 * orion=20
>>=20
>> There are patches (actually from you, May 2019) on the list which claim =
to bump ar7 and orion to 4.14:=20
>>=20
>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107337=20
>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107339=20
>>=20
>> I haven't looked closer, just in case you forgot about them ;-)=20
> Nobody reported that they are working so I never applied them. I do not=20
> have the hardware, I just made them compile.=20
> I would just remove these 3 targets soon.=20
> Hauke=20

Ah, okay, you didn't explicitly mention that in the submitted patches, so I=
 was unsure about their status.

Maybe it makes sense to wait until e.g. 2 weeks after the 19.07.0 release b=
efore removing them, as then a lot of people might realize that the targets=
 are missing there.
(Although one might argue that this will only delay their final death.)

However, based on the git log there have not been any target-specific chang=
es for at least two years. So, I'm fine with whatever time you choose.
(We could as well wait for the 20.xx branching and then just move it to tar=
gets feed together with old ar71xx.)

Best

Adrian

--=-=AvqSCp/LxPxK33=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3gGTEACgkQoNyKO7qx
AnAROBAA0byTdPFykMGs+pavm/eU3E6LgCRSjXQAI761S7BR+JipzOmT1Tr5kprc
tOJHEGR/GtudR6yhJ2VHy6Voejs5LsBpJRtm497miYF3LuAXpgeUCnCXE17iD4Mf
prNQdEJ8s6Yp9oJgkbU9ycRrSUt6sqsDrMEF+jZlpf2wcUONBo5ZDeZ/ben7bYyd
ohVQYAMT/zSxuuWj2kBVGHdw/q0nZHDDxia1pPgv7rm1pGlczL3cMTOe4U8e08Qu
Mu+qgnTn7SWRPNZJghNGJI7fTPCZhcJoHNkLKvh9riblu/jXc5LXFIz0JnybyYBV
HEqMUTXCwAGSmMCZ6n3qt8T/6P1fvzP74V2KKc3UzPsSxc+Sf26nyZth9WFo76mY
v4Igq4gOXP1qS9xlCMPVmozRVwEyM+VTPfHYBpXfw60fFPgYEldrmI/+StjQfqbu
uNEeOA13DYj9+8Vr0+k2mbQTbNjKyV/OINVGr67NPHJudRs7Y0cbfyYv3Hj6whcs
5CbLzW2UegoTol0J2tJGBaTHIsJOF8J2uKy8UCoAFAtOgXgX4p2HAZmRAPAV4Lnq
jY8Ltv2EfrqMd7Z25slr6rVn1Osi6lAuVNpFGBsIyLra0Vvoaj78HKIWo+wRxSNZ
yg6omAJbrcLpUCefrqzdANOxkKQaThpX+/4QeEKVrKXgBa26RpA=
=pEGG
-----END PGP SIGNATURE-----


--=-=AvqSCp/LxPxK33=-=--



--===============7121468353922995039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7121468353922995039==--


