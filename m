Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A4511FA47
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 19:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:References:In-Reply-To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P6Y24TFMnY5v2Hyw5Yio1rqFvNs95GJcrlbibnlJpfQ=; b=K/Xim76HmNd5yZfQCo2Jypcyi
	ROEmVmT5EhdUr1/Tnkaq5GdvHMIpM21LkeFMIeqmeOriNu4e/kWf4ryxLGoTeL+KpWls6LRBgSe8T
	jVbkJnRtSYwzaOnjDXJwUuujWrhUqOjSTVPwOkH3ROfQG76zdyuZtP0K6DUdE2juAqt7zsXcOZsHv
	QUNfHMCeWLNKTrVVZnSFtwCN69+bSux3DGuxF84YWCZmX0grnvK91xzYmZDv858i7xWt8gSGE8fFU
	lYdYXAAPPVNqFNrRDIZk3koWnA5zmGX/I9/GEBn2WCOTVK/HCgsPoR+LV0QoO8srf93JHgrPheRpB
	HLmUU62GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igYI5-0004BJ-6r; Sun, 15 Dec 2019 18:06:49 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igYHu-0004AI-EL
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 18:06:40 +0000
Received: from [10.160.173.103] ([80.187.84.103]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MekrN-1i6fEh1CUP-00akl7; Sun, 15 Dec 2019 19:06:30 +0100
Date: Sun, 15 Dec 2019 19:06:24 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <20191215171105.GA2832@makrotopia.org>
References: <008201d5b348$fd4eba30$f7ec2e90$@adrianschmutzler.de>
 <20191215132728.GD4782@makrotopia.org>
 <ecf600e1-e264-44d1-c9e6-61513f2f4da6@hauke-m.de>
 <011f01d5b368$364cc830$a2e65890$@adrianschmutzler.de>
 <20191215171105.GA2832@makrotopia.org>
MIME-Version: 1.0
To: Daniel Golle <daniel@makrotopia.org>
From: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <544C3B08-18C0-43DD-B5A0-A359F1B34DB4@adrianschmutzler.de>
X-Provags-ID: V03:K1:LYPfSlGBbMqyG1FsBIklSQb8nTI/LIIRrm1FJKbugSefmRGXvtJ
 rCQJnORBrgHtZ0c5OLTJsvTosvRLoNwjHd7/j0ySTemswTsB4D7kJoNumXYedzRNxBBC7pr
 StTN0Gb8AllpQ6JY8sY2d1ivvf9te5YLP5s+GG96b4fPIoyvHKVSWZ2ggY7u3fD/mXGqlIW
 mE6eWWeAyL6uM/ViRrOpg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/JNXF4n/oFI=:cnBI6rsEDl4GGRCCzLg9I8
 oxJtVMorAPM9CHoV5m0XwAgw8aVqlirksXZ2Vqvde7YXs6mfkDP8Rq7/Khy1yzpLgHK/ACJa6
 OxCM+i3Sp0VzZgE0yfmrDyuiLdBjkhZYDcU76LrF+Bora/VcAet1yCYkYXlH4Bbcf6aOhCh9O
 aeOidS6l0w1OS1Y9zQFd4K5lYuY41C8Li6AKel/hEmuuNurCBwy+plRkqM+C3wt4sn8epzu+B
 R1x++kCH14HbdiAAenrxL8hQKsCXLLu9dHd+N34e5B7Guq7Hmxhu+KYwy6IVoGOmI2uDGfld1
 V0wrZwZuFRnQbTacm6lXd45y3nLutAN26jS6gsfALcIl/aRj7eBFljJeDpaBg9OZ85O5Vrg/a
 sPW/jgmhJZJ4R7jLVOhqZvfCmuAgdDqkitHVetBO57nW6F89tAg8Q4s8fBmnp0dwZv1Ctb5IW
 WoMV5WhtmlkTek2boptJJMqocpx36GJJeQXSOvcfFtJLsNOIfesIcgKrH8O4T/lCPFeaOQz3H
 +VPgd/JdnXbhJ1ZBpzszMoP12xdbSQQ5yoxX7abjCqiVSXm9eXQetcTOIvrJJ/Atc6h4Avhjl
 ASUDAkmvRvXuUxU4E6erFXee1aslXfd8BCAFDIZpHip24MQt2ATT5l4xRysjpTNe1qF1+NSUK
 pXESACOGlcqaXgUY4YEbdSITc7TBIaPdvUDZsfCeHsBGtoakZ8gUTpVqi7z6aZYfNuzVSR49k
 oGzX7abPzTeo3Wyb0oy7SxDG7RehYmfvNJOGCH4OH83n+1VU52dNTPNxT5iyvkjGNUGYrzWs6
 mYg8k35tA33rP9aG3pIbViGkVf9p3C/lTKw2/7CG8v2hMyeRPBN9sbCk0j57WeBgE7dp8qvsW
 vbDJ8fNUahe93p/iUHS8GJlE4uc99N7NWlZM3CaIA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_100638_777745_A02F19CE 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] Lantiq DTS rename
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
Cc: 'Martin Blumenstingl' <martin.blumenstingl@googlemail.com>,
 'Hauke Mehrtens' <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============1443270662786803602=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1443270662786803602==
Content-Type: multipart/alternative; boundary="----UKHN2FA6DOKI806GIU0BQYUEJL438X"
Content-Transfer-Encoding: 7bit

------UKHN2FA6DOKI806GIU0BQYUEJL438X
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Well, we could change it for ath79 and ramips right now, would be a simple =
rename without side effects=2E

We could use just SOC as proposed=2E I'd prefer to decide on the name righ=
t away and then would apply the patch directly without sending it to the li=
st, to save us from rebasing=2E=2E=2E

Best

Adrian

On 15 December 2019 18:11:05 CET, Daniel Golle <daniel@makrotopia=2Eorg> w=
rote:
>On Sun, Dec 15, 2019 at 05:53:42PM +0100, mail@adrianschmutzler=2Ede
>wrote:
>> Hi,
>>=20
>> how would you call the SOC variable in image Makefile then? (the
>equivalent to ATH_SOC and MTK_SOC=2E=2E=2E)
>
>In a way those variables should be unified into something like 'SOC'=2E=
=2E=2E
>For now, maybe 'LTQ_SOC' will do until we replace them all by 'SOC' and
>that should be it=2E=2E=2E
>
>Cheers
>
>Daniel
>
>>=20
>> Best
>>=20
>> Adrian
>>=20
>> > -----Original Message-----
>> > From: openwrt-devel
>[mailto:openwrt-devel-bounces@lists=2Eopenwrt=2Eorg]
>> > On Behalf Of Hauke Mehrtens
>> > Sent: Sonntag, 15=2E Dezember 2019 14:49
>> > To: Daniel Golle <daniel@makrotopia=2Eorg>; mail@adrianschmutzler=2Ed=
e
>> > Cc: Martin Blumenstingl <martin=2Eblumenstingl@googlemail=2Ecom>;
>openwrt-
>> > devel@lists=2Eopenwrt=2Eorg
>> > Subject: Re: [OpenWrt-Devel] Lantiq DTS rename
>> >=20
>> > On 12/15/19 2:27 PM, Daniel Golle wrote:
>> > > Hi Adrian,
>> > >
>> > > On Sun, Dec 15, 2019 at 02:10:14PM +0100,
>mail@adrianschmutzler=2Ede
>> > wrote:
>> > >> Hi,
>> > >>
>> > >> I consider doing a DTS rename for lantiq target similar to what
>it's like on
>> > ath79 and what I did for ramips earlier that year=2E
>> > >>
>> > >> However, I wonder whether the "soc_vendor_model=2Edts" scheme is
>> > useful there, or whether it wouldn't be better to just use
>> > "vendor_model=2Edts" =2E=2E=2E
>> > >>
>> > >> Any thoughts on this or any NAK in general?
>> > >
>> > > soc_vendor_model should be appropriate here is well=2E why not?
>> >=20
>> > Yes please clean this up and use the soc_vendor_model model, I
>think this is
>> > the common format in the Linux kernel=2E
>> >=20
>> > Be aware that there is a pull request from Martin pending with some
>changes
>> > to the existing files:
>> > https://github=2Ecom/openwrt/openwrt/pull/2216
>> >=20
>> > Please also move the dts files into the lantiq subfolder at
>> > arch/mips/boot/dts/lantiq/
>> >=20
>> > Hauke

------UKHN2FA6DOKI806GIU0BQYUEJL438X
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Well, we could change it for ath79 and ramips righ=
t now, would be a simple rename without side effects=2E<br><br>We could use=
 just SOC as proposed=2E I'd prefer to decide on the name right away and th=
en would apply the patch directly without sending it to the list, to save u=
s from rebasing=2E=2E=2E<br><br>Best<br><br>Adrian<br><br><div class=3D"gma=
il_quote">On 15 December 2019 18:11:05 CET, Daniel Golle &lt;daniel@makroto=
pia=2Eorg&gt; wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0pt =
0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1=
ex;">
<pre class=3D"k9mail">On Sun, Dec 15, 2019 at 05:53:42PM +0100, mail@adria=
nschmutzler=2Ede wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #729fcf; padding-left: 1ex;"=
>Hi,<br><br>how would you call the SOC variable in image Makefile then? (th=
e equivalent to ATH_SOC and MTK_SOC=2E=2E=2E)<br></blockquote><br>In a way =
those variables should be unified into something like 'SOC'=2E=2E=2E<br>For=
 now, maybe 'LTQ_SOC' will do until we replace them all by 'SOC' and<br>tha=
t should be it=2E=2E=2E<br><br>Cheers<br><br>Daniel<br><br><blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px so=
lid #729fcf; padding-left: 1ex;"><br>Best<br><br>Adrian<br><br><blockquote =
class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1p=
x solid #ad7fa8; padding-left: 1ex;">-----Original Message-----<br>From: op=
enwrt-devel [mailto:openwrt-devel-bounces@lists=2Eopenwrt=2Eorg]<br>On Beha=
lf Of Hauke Mehrtens<br>Sent: Sonntag, 15=2E Dezember 2019 14:49<br>To: Dan=
iel Golle &lt;daniel@makrotopia=2Eorg&gt;; mail@adrianschmutzler=2Ede<br>Cc=
: Martin Blumenstingl &lt;martin=2Eblumenstingl@googlemail=2Ecom&gt;; openw=
rt-<br>devel@lists=2Eopenwrt=2Eorg<br>Subject: Re: [OpenWrt-Devel] Lantiq D=
TS rename<br><br>On 12/15/19 2:27 PM, Daniel Golle wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px =
solid #8ae234; padding-left: 1ex;"> Hi Adrian,<br><br> On Sun, Dec 15, 2019=
 at 02:10:14PM +0100, mail@adrianschmutzler=2Ede<br></blockquote>wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; bor=
der-left: 1px solid #8ae234; padding-left: 1ex;"><blockquote class=3D"gmail=
_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #fcaf3=
e; padding-left: 1ex;"> Hi,<br><br> I consider doing a DTS rename for lanti=
q target similar to what it's like on<br></blockquote></blockquote>ath79 an=
d what I did for ramips earlier that year=2E<br><blockquote class=3D"gmail_=
quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #8ae234=
; padding-left: 1ex;"><blockquote class=3D"gmail_quote" style=3D"margin: 0p=
t 0pt 1ex 0=2E8ex; border-left: 1px solid #fcaf3e; padding-left: 1ex;"><br>=
 However, I wonder whether the "soc_vendor_model=2Edts" scheme is<br></bloc=
kquote></blockquote>useful there, or whether it wouldn't be better to just =
use<br>"vendor_model=2Edts" =2E=2E=2E<br><blockquote class=3D"gmail_quote" =
style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #8ae234; paddi=
ng-left: 1ex;"><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1=
ex 0=2E8ex; border-left: 1px solid #fcaf3e; padding-left: 1ex;"><br> Any th=
oughts on this or any NAK in general?<br></blockquote><br> soc_vendor_model=
 should be appropriate here is well=2E why not?<br></blockquote><br>Yes ple=
ase clean this up and use the soc_vendor_model model, I think this is<br>th=
e common format in the Linux kernel=2E<br><br>Be aware that there is a pull=
 request from Martin pending with some changes<br>to the existing files:<br=
><a href=3D"https://github=2Ecom/openwrt/openwrt/pull/2216">https://github=
=2Ecom/openwrt/openwrt/pull/2216</a><br><br>Please also move the dts files =
into the lantiq subfolder at<br>arch/mips/boot/dts/lantiq/<br><br>Hauke<br>=
</blockquote></blockquote><br><br></pre></blockquote></div></body></html>
------UKHN2FA6DOKI806GIU0BQYUEJL438X--


--===============1443270662786803602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1443270662786803602==--

