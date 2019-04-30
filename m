Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7ACEE83
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Apr 2019 03:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Em5NbFjRgcglqhimxcK+/GaYSZwPVWIt3syAbuBJuQ=; b=hXfCd6/145bYV3YjMH3pkqSnl
	C6+4/JNrJHXp5h191MQ+9/2AeAsRJNbjeEFoi0hckXaW3fSM73EfRwaHm4jAutLUVKfCQY72Om7v5
	Yn3TZ32dXdMZkUXuxaC8lqPySZ+vLXwxIBJTgu/hL9vbk9yKrV5GbFA5mU/nJ955WIDc26/vu5WMd
	pnl1nD4tEicLJ8hqtBm3LtI1SbZRzXkRrz4O+j4jqV6ZXAtJcZQltOPmUhthKLSY95dnCcby8K/ec
	6HXeJx/qVmW/ZRM/AbN0r6L9+yHQB4rSgJVq8CuwCUvVZGU5v/LKl5GnZTkRIvtGElL+2Orss2RpZ
	gMyt7uMag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHsa-0002do-63; Tue, 30 Apr 2019 01:48:20 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHsS-0002dN-L0
 for openwrt-devel@lists.openwrt.org; Tue, 30 Apr 2019 01:48:14 +0000
Received: by mail-ua1-x943.google.com with SMTP id 88so4213406uau.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 29 Apr 2019 18:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CVV40VpKgpfetCgS6NowtsvoA57Gz/ppks5P/y2E1kM=;
 b=N6DVdheYgJC63K64VrYGJOrP8hU2XbQ3T0hRWvD6JraKB3uC5J73QpynXyzZEnz9BM
 Qhs/Gg4HKBA5F5drPJfXcfzSn/8rvkwb8mcTddOR5iu4NZwNcYe49su/vF2TnKCpp/Kd
 bQbV9cVmHJ8YcK4MNk1HdXqhCeyx6+5LEW4D917hnx96Tl7/APhYfbYXHrfpQkQQMFRF
 TApboR29oPLjqsjCiPmtjmGJO5N1orV2nMUc/nrgSqJD3L97LAK2C0n2YgDy9h1AtrHH
 dyM0VFjo7xfyiBlhNyK9U5LBW2kn4f1sjjaVLWkxNd8QUKIL29S+S2EQ5Erm7yZLInfU
 jAGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CVV40VpKgpfetCgS6NowtsvoA57Gz/ppks5P/y2E1kM=;
 b=SuDQpSQ643zp89IWZ1s0GtdEOu+/PXeef4RkixaK/ziWv+yZ3cM7qnn6HOghJFm0uL
 kpwhTPqJShTsP/nlAzPOD3RBdoitiXh3F8BOX79RQZPEiuzPlZMAhpW/M1lGlHu560jU
 nkncu5PUh2r89VDLLWJfNzraivIm8dt8OfKIKe6M4+mORe5ANSttfOMXI47/6DW/znsB
 QJ7ZwpNpro3jUAuFNXWDXPbznd78EH1O1cb9Kh0Bfasy2W167g5kresQVoEFS5ak1rHK
 HH2lt/WvBz3hHMQexMA/k9xEZHhWl1zL7PSV1BpEzcVDNCys+ZYIclkuBi4kqEEcP9fB
 nt2w==
X-Gm-Message-State: APjAAAVx6iP+BPT0GSxAv3pgQKUOr45p4KoHVfnBEkf1zrVRInip3uNX
 /JbkUAPQOp/bsHjPEVOLcatJh/dzGuTq8EXOfA==
X-Google-Smtp-Source: APXvYqyzMdvzRlsZWVo4q7HVN4aqNpdxzVIQws/xxo2on8GWIrcTqdvJUc42zHrhxG7hVbanN68s3q1nmiqBfCR3fFE=
X-Received: by 2002:ab0:2485:: with SMTP id i5mr1891062uan.107.1556588890850; 
 Mon, 29 Apr 2019 18:48:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190417134552.9294-1-freifunk@adrianschmutzler.de>
 <3153692.KaT8f5YDfS@debian64>
 <8a272c0b-4f75-df8a-f2a4-f9197ee9f7c4@david-bauer.net>
 <2243041.a4oj9KbRke@debian64>
 <912fd259-fe71-3446-bd05-838bea125163@david-bauer.net>
 <005601d4f900$da3d1760$8eb74620$@adrianschmutzler.de>
In-Reply-To: <005601d4f900$da3d1760$8eb74620$@adrianschmutzler.de>
From: camden lindsay <camden.lindsay+lede@gmail.com>
Date: Mon, 29 Apr 2019 18:48:00 -0700
Message-ID: <CABkW7JNC7uNqx+BgH80WAywsXymxEfwzFA+YRSmsYfDiRZDLpg@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_184812_694746_36F720B8 
X-CRM114-Status: GOOD (  32.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (camden.lindsay+lede[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add SUPPORTED_DEVICES for Archer
 C7 v1/v2
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>, David Bauer <mail@david-bauer.net>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============5866404029031105523=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5866404029031105523==
Content-Type: multipart/alternative; boundary="000000000000e68c4f0587b59765"

--000000000000e68c4f0587b59765
Content-Type: text/plain; charset="UTF-8"

Adrian-
I have a C7V2 and can do some testing on it if you'd explain exactly what
you're looking for...  I don't quite follow what is needed in the above
thread.  Something about looking at PCI paths before and after an upgrade
from one version to another...
Camden

On Mon, Apr 22, 2019 at 4:45 AM <mail@adrianschmutzler.de> wrote:

> Hi all,
>
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of David Bauer
> > Sent: Sonntag, 21. April 2019 15:19
> > To: Christian Lamparter <chunkeey@gmail.com>
> > Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
> > devel@lists.openwrt.org; Tomasz Maciej Nowak <tomek_n@o2.pl>
> > Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add SUPPORTED_DEVICES for
> > Archer C7 v1/v2
> >
> > Hello Christian,
> >
> > On 21.04.19 14:17, Christian Lamparter wrote:
> > > Hello David,
> > >
> > > On Sunday, April 21, 2019 11:42:52 AM CEST David Bauer wrote:
> > >> On 20.04.19 20:59, Christian Lamparter wrote:
> > >>> On Wednesday, April 17, 2019 3:45:52 PM CEST Adrian Schmutzler wrote:
> > >>>> The identifier for both devices is "archer-c7" on ar71xx, set here:
> > >>>>
> > https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/
> > >>>> base-files/lib/ar71xx.sh#L348
> > >>>>
> > https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/
> > >>>> base-files/lib/ar71xx.sh#L511
> > >>>>
> > >>>> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > >>>> ---
> > >>>>   target/linux/ath79/image/generic-tp-link.mk | 2 ++
> > >>>>   1 file changed, 2 insertions(+)
> > >>>>
> > >>>> diff --git a/target/linux/ath79/image/generic-tp-link.mk
> > >>>> b/target/linux/ath79/image/generic-tp-link.mk
> > >>>> index 6853f12341..db1eabd420 100644
> > >>>> --- a/target/linux/ath79/image/generic-tp-link.mk
> > >>>> +++ b/target/linux/ath79/image/generic-tp-link.mk
> > >>>> @@ -70,6 +70,7 @@ define Device/tplink_archer-c7-v1
> > >>>>     DEVICE_TITLE := TP-Link Archer C7 v1
> > >>>>     DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-
> > usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
> > >>>>     TPLINK_HWID := 0x75000001
> > >>>> +  SUPPORTED_DEVICES += archer-c7
> > >>>>   endef
> > >>>>   TARGET_DEVICES += tplink_archer-c7-v1
> > >>>>
> > >>>> @@ -79,6 +80,7 @@ define Device/tplink_archer-c7-v2
> > >>>>     DEVICE_TITLE := TP-Link Archer C7 v2
> > >>>>     DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-
> > usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
> > >>>>     TPLINK_HWID := 0xc7000002
> > >>>> +  SUPPORTED_DEVICES += archer-c7
> > >>> In case of the v2, I think there's still the problem that a straight
> > >>> up upgrade from ar71xx to ath79 will affect the 5GHz ath10k wireless
> > >>> because it now has a new device path and hence a new default
> > >>> configuration (where the card is
> > >>> disabled) is created.
> > >>
> > >> I recall upgrading my OCEDO Koala (which uses the same 9558/9880
> > >> combo) from ar71xx to ath79 and the PCIe path being consistent on both
> > platforms.
> > >>
> > >> This however might have changed in the meantime, so someone should
> > >> probably confirm this with a real C7.
> > >
> > > On my C7 v1 with a QCA9880v2 the ar71xx installation back in
> > > 2018-08-17 looked like this:
> > >
> > > config wifi-device 'radio0'
> > >          option type             'mac80211'
> > >          option country          'DE'
> > >          option channel          'auto'
> > >          option hwmode           '11g'
> > >          option path             'platform/qca955x_wmac'
> > >          option htmode           'HT20'
> > >          option disabled         '0'
> > >          option txpower          '10'
> > >
> > > config wifi-device 'radio1'
> > >          option type             'mac80211'
> > >          option channel          '52'
> > >          option country          'DE'
> > >          option hwmode           '11a'
> > >          option path             'pci0000:01/0000:01:00.0'
> > >          option htmode           'VHT80'
> > >          option disabled         '0'
> > >          option txpower          '14'
> > >
> > > vs ath79 (today):
> > >
> > > config wifi-device 'radio0'
> > >          option type             'mac80211'
> > >          option country          'DE'
> > >          option channel          'auto'
> > >          option hwmode           '11g'
> > >          option path             'platform/ahb/ahb:apb/18100000.wmac'
> > >          option htmode           'HT20'
> > >          option disabled         '0'
> > >          option txpower          '10'
> > >
> > > config wifi-device 'radio1'
> > >          option type             'mac80211'
> > >          option channel          '52'
> > >          option country          'DE'
> > >          option hwmode           '11a'
> > >          option path             'pci0000:00/0000:00:00.0'
> > >          option htmode           'VHT80'
> > >          option disabled         '0'
> > >          option txpower          '14'
> > >
> > > so the path changed from "pci0000:01/0000:01:00.0" to
> > > "pci0000:00/0000:00:00.0". But again this is on a C7 v1.
> > >
> > > Based on the bootlog on the wiki for 18.06.1 :
> > > https://openwrt.org/toh/tp-link/archer-c7-1750#boot_logs
> > > The ar71xx image enabling both pcie Root Complexes of the QCA955x.
> > > But unfortunately the pcie slot of the C7 is wired to the second RC,
> > > so the ath10k card gets pci0000:01/0000:01:00.0. Does anybody want to
> > > test what happens if the ath79 C7 v2 DTS enables "pcie0" too? It might
> > > work, but it might not (depending on whenever it might end up in a
> > > different pci domain like pci0001:00.).
> >
> > Damn, you are right. The Koala has it's only PCIe endpoint wired to the
> first
> > bus, so this works fine.
> >
> > Regarding enabling the first bus: Personally, I would prefer a migration
> script
> > over enabling a non-wired interface. There is already a migration script
> for
> > exactly this case in the mpc85xx target, so most of this work is probably
> > straight up copy-paste ;)
> >
> > Best wishes
> > David
>
> I normally do not care about the config-upgrade as I do it manually with
> custom scripts, partially relying on default config after upgrade.
>
> My patch was only meant to fix image-check.
> If the discussed upgrade-issue is considered a requirement for enabling
> SUPPORTED_DEVICES, I will have to wait for someone to test on C7v2.
>
> Best
>
> Adrian
>
>
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000e68c4f0587b59765
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Adrian-<div>I have a C7V2 and can do some testing on it if=
 you&#39;d explain exactly what you&#39;re looking for...=C2=A0 I don&#39;t=
 quite follow what is needed in the above thread.=C2=A0 Something about loo=
king at PCI paths before and after an upgrade from one version to another..=
.</div><div>Camden</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon, Apr 22, 2019 at 4:45 AM &lt;<a href=3D"mail=
to:mail@adrianschmutzler.de">mail@adrianschmutzler.de</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all,<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: openwrt-devel [mailto:<a href=3D"mailto:openwrt-devel-bounces@li=
sts.openwrt.org" target=3D"_blank">openwrt-devel-bounces@lists.openwrt.org<=
/a>]<br>
&gt; On Behalf Of David Bauer<br>
&gt; Sent: Sonntag, 21. April 2019 15:19<br>
&gt; To: Christian Lamparter &lt;<a href=3D"mailto:chunkeey@gmail.com" targ=
et=3D"_blank">chunkeey@gmail.com</a>&gt;<br>
&gt; Cc: Adrian Schmutzler &lt;<a href=3D"mailto:freifunk@adrianschmutzler.=
de" target=3D"_blank">freifunk@adrianschmutzler.de</a>&gt;; openwrt-<br>
&gt; <a href=3D"mailto:devel@lists.openwrt.org" target=3D"_blank">devel@lis=
ts.openwrt.org</a>; Tomasz Maciej Nowak &lt;<a href=3D"mailto:tomek_n@o2.pl=
" target=3D"_blank">tomek_n@o2.pl</a>&gt;<br>
&gt; Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add SUPPORTED_DEVICES for<=
br>
&gt; Archer C7 v1/v2<br>
&gt; <br>
&gt; Hello Christian,<br>
&gt; <br>
&gt; On 21.04.19 14:17, Christian Lamparter wrote:<br>
&gt; &gt; Hello David,<br>
&gt; &gt;<br>
&gt; &gt; On Sunday, April 21, 2019 11:42:52 AM CEST David Bauer wrote:<br>
&gt; &gt;&gt; On 20.04.19 20:59, Christian Lamparter wrote:<br>
&gt; &gt;&gt;&gt; On Wednesday, April 17, 2019 3:45:52 PM CEST Adrian Schmu=
tzler wrote:<br>
&gt; &gt;&gt;&gt;&gt; The identifier for both devices is &quot;archer-c7&qu=
ot; on ar71xx, set here:<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; <a href=3D"https://github.com/openwrt/openwrt/blob/master/target/linux=
/ar71xx/" rel=3D"noreferrer" target=3D"_blank">https://github.com/openwrt/o=
penwrt/blob/master/target/linux/ar71xx/</a><br>
&gt; &gt;&gt;&gt;&gt; base-files/lib/ar71xx.sh#L348<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; <a href=3D"https://github.com/openwrt/openwrt/blob/master/target/linux=
/ar71xx/" rel=3D"noreferrer" target=3D"_blank">https://github.com/openwrt/o=
penwrt/blob/master/target/linux/ar71xx/</a><br>
&gt; &gt;&gt;&gt;&gt; base-files/lib/ar71xx.sh#L511<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; Signed-off-by: Adrian Schmutzler &lt;<a href=3D"mailt=
o:freifunk@adrianschmutzler.de" target=3D"_blank">freifunk@adrianschmutzler=
.de</a>&gt;<br>
&gt; &gt;&gt;&gt;&gt; ---<br>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0target/linux/ath79/image/<a href=3D"http:=
//generic-tp-link.mk" rel=3D"noreferrer" target=3D"_blank">generic-tp-link.=
mk</a> | 2 ++<br>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A01 file changed, 2 insertions(+)<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; diff --git a/target/linux/ath79/image/<a href=3D"http=
://generic-tp-link.mk" rel=3D"noreferrer" target=3D"_blank">generic-tp-link=
.mk</a><br>
&gt; &gt;&gt;&gt;&gt; b/target/linux/ath79/image/<a href=3D"http://generic-=
tp-link.mk" rel=3D"noreferrer" target=3D"_blank">generic-tp-link.mk</a><br>
&gt; &gt;&gt;&gt;&gt; index 6853f12341..db1eabd420 100644<br>
&gt; &gt;&gt;&gt;&gt; --- a/target/linux/ath79/image/<a href=3D"http://gene=
ric-tp-link.mk" rel=3D"noreferrer" target=3D"_blank">generic-tp-link.mk</a>=
<br>
&gt; &gt;&gt;&gt;&gt; +++ b/target/linux/ath79/image/<a href=3D"http://gene=
ric-tp-link.mk" rel=3D"noreferrer" target=3D"_blank">generic-tp-link.mk</a>=
<br>
&gt; &gt;&gt;&gt;&gt; @@ -70,6 +70,7 @@ define Device/tplink_archer-c7-v1<b=
r>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0DEVICE_TITLE :=3D TP-Link Archer C=
7 v1<br>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0DEVICE_PACKAGES :=3D kmod-usb-core=
 kmod-usb2 kmod-usb-ledtrig-<br>
&gt; usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct<br>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0TPLINK_HWID :=3D 0x75000001<br>
&gt; &gt;&gt;&gt;&gt; +=C2=A0 SUPPORTED_DEVICES +=3D archer-c7<br>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0endef<br>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0TARGET_DEVICES +=3D tplink_archer-c7-v1<b=
r>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; @@ -79,6 +80,7 @@ define Device/tplink_archer-c7-v2<b=
r>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0DEVICE_TITLE :=3D TP-Link Archer C=
7 v2<br>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0DEVICE_PACKAGES :=3D kmod-usb-core=
 kmod-usb2 kmod-usb-ledtrig-<br>
&gt; usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct<br>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0TPLINK_HWID :=3D 0xc7000002<br>
&gt; &gt;&gt;&gt;&gt; +=C2=A0 SUPPORTED_DEVICES +=3D archer-c7<br>
&gt; &gt;&gt;&gt; In case of the v2, I think there&#39;s still the problem =
that a straight<br>
&gt; &gt;&gt;&gt; up upgrade from ar71xx to ath79 will affect the 5GHz ath1=
0k wireless<br>
&gt; &gt;&gt;&gt; because it now has a new device path and hence a new defa=
ult<br>
&gt; &gt;&gt;&gt; configuration (where the card is<br>
&gt; &gt;&gt;&gt; disabled) is created.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I recall upgrading my OCEDO Koala (which uses the same 9558/9=
880<br>
&gt; &gt;&gt; combo) from ar71xx to ath79 and the PCIe path being consisten=
t on both<br>
&gt; platforms.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; This however might have changed in the meantime, so someone s=
hould<br>
&gt; &gt;&gt; probably confirm this with a real C7.<br>
&gt; &gt;<br>
&gt; &gt; On my C7 v1 with a QCA9880v2 the ar71xx installation back in<br>
&gt; &gt; 2018-08-17 looked like this:<br>
&gt; &gt;<br>
&gt; &gt; config wifi-device &#39;radio0&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option type=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;mac80211&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option country=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;DE&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option channel=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;auto&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option hwmode=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&#39;11g&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option path=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;platform/qca955x_wmac&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option htmode=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&#39;HT20&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option disabled=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&#39;0&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option txpower=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;10&#39;<br>
&gt; &gt;<br>
&gt; &gt; config wifi-device &#39;radio1&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option type=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;mac80211&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option channel=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;52&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option country=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;DE&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option hwmode=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&#39;11a&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option path=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;pci0000:01/0000:01:00.0&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option htmode=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&#39;VHT80&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option disabled=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&#39;0&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option txpower=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;14&#39;<br>
&gt; &gt;<br>
&gt; &gt; vs ath79 (today):<br>
&gt; &gt;<br>
&gt; &gt; config wifi-device &#39;radio0&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option type=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;mac80211&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option country=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;DE&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option channel=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;auto&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option hwmode=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&#39;11g&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option path=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;platform/ahb/ahb:apb/18100000.wmac&#39;<br=
>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option htmode=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&#39;HT20&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option disabled=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&#39;0&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option txpower=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;10&#39;<br>
&gt; &gt;<br>
&gt; &gt; config wifi-device &#39;radio1&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option type=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;mac80211&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option channel=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;52&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option country=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;DE&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option hwmode=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&#39;11a&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option path=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;pci0000:00/0000:00:00.0&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option htmode=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&#39;VHT80&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option disabled=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&#39;0&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option txpower=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;14&#39;<br>
&gt; &gt;<br>
&gt; &gt; so the path changed from &quot;pci0000:01/0000:01:00.0&quot; to<b=
r>
&gt; &gt; &quot;pci0000:00/0000:00:00.0&quot;. But again this is on a C7 v1=
.<br>
&gt; &gt;<br>
&gt; &gt; Based on the bootlog on the wiki for 18.06.1 :<br>
&gt; &gt; <a href=3D"https://openwrt.org/toh/tp-link/archer-c7-1750#boot_lo=
gs" rel=3D"noreferrer" target=3D"_blank">https://openwrt.org/toh/tp-link/ar=
cher-c7-1750#boot_logs</a><br>
&gt; &gt; The ar71xx image enabling both pcie Root Complexes of the QCA955x=
.<br>
&gt; &gt; But unfortunately the pcie slot of the C7 is wired to the second =
RC,<br>
&gt; &gt; so the ath10k card gets pci0000:01/0000:01:00.0. Does anybody wan=
t to<br>
&gt; &gt; test what happens if the ath79 C7 v2 DTS enables &quot;pcie0&quot=
; too? It might<br>
&gt; &gt; work, but it might not (depending on whenever it might end up in =
a<br>
&gt; &gt; different pci domain like pci0001:00.).<br>
&gt; <br>
&gt; Damn, you are right. The Koala has it&#39;s only PCIe endpoint wired t=
o the first<br>
&gt; bus, so this works fine.<br>
&gt; <br>
&gt; Regarding enabling the first bus: Personally, I would prefer a migrati=
on script<br>
&gt; over enabling a non-wired interface. There is already a migration scri=
pt for<br>
&gt; exactly this case in the mpc85xx target, so most of this work is proba=
bly<br>
&gt; straight up copy-paste ;)<br>
&gt; <br>
&gt; Best wishes<br>
&gt; David<br>
<br>
I normally do not care about the config-upgrade as I do it manually with cu=
stom scripts, partially relying on default config after upgrade.<br>
<br>
My patch was only meant to fix image-check.<br>
If the discussed upgrade-issue is considered a requirement for enabling SUP=
PORTED_DEVICES, I will have to wait for someone to test on C7v2.<br>
<br>
Best<br>
<br>
Adrian<br>
<br>
<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--000000000000e68c4f0587b59765--


--===============5866404029031105523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5866404029031105523==--

