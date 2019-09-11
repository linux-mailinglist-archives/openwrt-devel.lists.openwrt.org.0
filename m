Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB86B04E5
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 22:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R8/M9M3BFeylVT141qK7wqyAAX3HnvWdatFGCuko4f0=; b=ZlWi0vKXgV13wd+rxg5g3VD4i
	N/a2RjGxK5LBI4FQWgYkpY+gjAO4YvjqII2mcM8p8kXQNgSCcEskKWlKoxGuKQNzMbukM3AVeHTEF
	A7+zcMIAPCd+Xps1fRFaVLnPdCeBeIRaVfyuRDuYGMjefcpbBocYyN8onaLbM0P9JoS9W9dagJX2H
	eAcbELyHoqDWPXXkliinnewR9hPbscHe6qMn6VkqxfAYq7WpGXwOXwRWrF2aEuZUX6GoNU2bfMpDm
	3rp9ZcLgIXPCeCbV+UMGNmROFzp71QrAqsNN49V7pQLxiTa1HHDHIv2Glv6Hy5F5O49mLf83MWyc3
	a71MoAUOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i89M7-0001mQ-1a; Wed, 11 Sep 2019 20:36:47 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i89Lv-0001m4-U6
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 20:36:37 +0000
Received: by mail-wr1-x434.google.com with SMTP id y19so26063483wrd.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Sep 2019 13:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HinL1LIIRxlar9YDEuwamdfPNqgyj3dXKOEASVWgcDU=;
 b=iPabmIZsOY4tnWYhxZ/BGAj1LFBmE4NJusf4vsh1fgk0HLSxdxOPMRqyPoJwUaz2EA
 4JMrpYhFVllDsbbyxRfxmjQsphkiOFPSWqbWiPtFh1kSJChws9GngPJXGfATZCLur5iN
 k7/wRBp416o3qCyepI6/udnbyzpDuJIJcCJV6Bh6Fy9MOtCyDVtOyUVU8/jT3QH/Gci2
 4gDWfUEn4Bu+joBGoE4ibwvZgVrPvBG+lVFiXH08XTvI00bjb2UPUeR/WpCRsu79P+Rt
 RGUcocy0KXmRnbAF2HlbEFwUHgDzbk5NVk9xAddzzrwFX5Pg3v8wjhncsqfYoWh6EPpD
 bung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HinL1LIIRxlar9YDEuwamdfPNqgyj3dXKOEASVWgcDU=;
 b=cq44k1uEeSZdcQ2g/eGPau5diVhvKvjqo4bcFz4jjqg2lnXhIfxB043VVqiu3USXWp
 uynpMHbQqm4rl8Ly/sOkI1Edm/lO5bCXFtLvt0E1JxnpUwwkolsvxjvwkLr52HYh1SWd
 +HpIE0omXN4tp0g242gO+FU5s8lTups/7nrKV2aM/D7bk4ALm5x0xDBrauDlZpuVdXMA
 1TpMqhOXKa/UrKPm4qLAraNXAu9/lnGArzxfScUbcmzf87uczV03p4fVwUCiYZHOoKVf
 5qKWbnGfDD7bzcY+ZkD6HMVYYYfPgmQMRvXzWv4nUnO5fthzk1Pl780OWIsGlI+o3hRA
 d3OA==
X-Gm-Message-State: APjAAAVA3vPDHlMKA0r23kAf28cjw4qfg5W6BcmAjmTH+yBuOpvBbBEE
 J/eJPlWd/iNMZkZCFZvDx9bEiUzPxpJ4+jAm+G7wbg==
X-Google-Smtp-Source: APXvYqwXBTIPXi8MiIhYlnHRkrFFusv3IZgxuk+fBNwP9ZvaJijpYvGUJIt68Qv6pDF9EwQyKKmJhd55HfTUUt7NFUY=
X-Received: by 2002:adf:ec0a:: with SMTP id x10mr3212074wrn.292.1568234194295; 
 Wed, 11 Sep 2019 13:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <f5bcb39a-bcc3-58c7-0b9a-622b0c386fff@candelatech.com>
 <CAEUausqebPVXzSgSBwgovzTBSWSO1dvF+G0LgqMOB8ry7hXGiA@mail.gmail.com>
 <329d1c22-ca3e-9675-6d4b-7ab8d1e38b79@candelatech.com>
In-Reply-To: <329d1c22-ca3e-9675-6d4b-7ab8d1e38b79@candelatech.com>
From: Carlito Nueno <carlitonueno@gmail.com>
Date: Wed, 11 Sep 2019 13:36:23 -0700
Message-ID: <CAEUauspe6GWRTe-3uokay_8KpxKWEQkBS4rfMbmozBP-0a--AQ@mail.gmail.com>
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_133635_998677_58CF8460 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (carlitonueno[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] New ath10k-ct firmware available.
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============4803768316395045202=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4803768316395045202==
Content-Type: multipart/alternative; boundary="0000000000001360dd05924cfae8"

--0000000000001360dd05924cfae8
Content-Type: text/plain; charset="UTF-8"

Awesome!

I will test it and let you know.

Thanks

On Wed, Sep 11, 2019 at 1:31 PM Ben Greear <greearb@candelatech.com> wrote:

> Yes, I think it is probably dynamic VLANs.  And it should work with any
> wave
> 2 ath10k chipset including 9984.
>
> I'm interested to know if it works or not.
>
> Thanks,
> Ben
>
> On 9/11/19 1:30 PM, Carlito Nueno wrote:
> > Hi Ben,
> >
> > I was wondering if AP-VLAN is same as dynamic VLAN.
> > If so, will this feature work with ar71xx board - QCA9984
> >
> > I can test it and let you know if I see any issues.
> >
> > Thank you making ath10-ct!
> >
> >
> > On Mon, Sep 9, 2019 at 12:55 PM Ben Greear <greearb@candelatech.com
> <mailto:greearb@candelatech.com>> wrote:
> >
> >     This enables a feature flag in the wave-2 firmware wmi-services
> indicating it can send
> >     software-encrypted raw frames.  This should in turn allow the
> AP-VLAN feature to work.
> >
> >     For those that know how to use AP-VLANs, please try this wave-2 FW
> and the latest ath10k-ct
> >     driver(commit:  5e8cd86f90dac966d12df6ece84ac41458d0e95f) and let me
> know if it works as expected
> >     or not.
> >
> >     988x
> >     5872fe046d90d844a6d3e232e47a6865bac551d7043b2874147c077e356b35d8
> firmware-2-ct-full-community-22.bin.lede.011
> >     4568c3895a101ad28363491ea935f56a48bddea4c1be1889a6ba8d151902062a
> firmware-2-ct-full-htt-mgt-community-22.bin.lede.011
> >     /home/greearb/candela_html/downloads
> >     9887
> >     2c64ab22159d04cd345b8caffdd76ac95c0409729121a7a4095c5192f46013b2
> firmware-2-ct-full-community-22.bin.lede.011
> >     c806b8894faf3bbb11004f77196c6d711b9a6c187b1512d84e05fa98a5aba2ab
> firmware-2-ct-full-htt-mgt-community-22.bin.lede.011
> >     /home/greearb/candela_html/downloads
> >     9980
> >     4ed106dbe8431945afc6a995765f245f574713095b567df35f1397bba5f6fa2e
> firmware-5-ct-full-community-12.bin-lede.011
> >     7434c84c501e00a24cbca338569ba150a9ec137ee2b9fa52d13484794300924c
> firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
> >     /home/greearb/candela_html/downloads
> >     9984
> >     9af817e65dc9f195517f05ad25f0eca693632ea03b55739a2e0f0fc82e810405
> firmware-5-ct-full-community-12.bin-lede.011
> >     11e116631555550185e712f70bd29ac41b495bf0ecbfc3334cada8a8c10a42f0
> firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
> >     /home/greearb/candela_html/downloads
> >     4019
> >     21a6b5b69e3c1591cb9fe6077971ddadb003cac698f2962d4d8d73bc04038bbf
> firmware-5-ct-full-community-12.bin-lede.011
> >     87111717ec5279125d397bea45386707684ee707a91f6c58298818fd02bf567f
> firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
> >     /home/greearb/candela_html/downloads
> >     9888
> >     3c9f2e914d2a5eb3a413872239045dfcca105483ba83dd9b293e6b8855fda883
> firmware-5-ct-full-community-12.bin-lede.011
> >     dcb1bd826e5e1ef266fd7ee04410b44d4474d59f6eca0cc634e6432aaf326426
> firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
> >     /home/greearb/candela_html/downloads
> >
> >
> >     Thanks,
> >     Ben
> >
> >     --
> >     Ben Greear <greearb@candelatech.com <mailto:greearb@candelatech.com
> >>
> >     Candela Technologies Inc http://www.candelatech.com
> >
> >
> >     _______________________________________________
> >     openwrt-devel mailing list
> >     openwrt-devel@lists.openwrt.org <mailto:
> openwrt-devel@lists.openwrt.org>
> >     https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
>
>
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
>
>

--0000000000001360dd05924cfae8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Awesome!</div><div><br></div><div>I will test it and =
let you know.</div><div><br></div><div>Thanks<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 11, 2019=
 at 1:31 PM Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com">greea=
rb@candelatech.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Yes, I think it is probably dynamic VLANs.=C2=A0 And it s=
hould work with any wave<br>
2 ath10k chipset including 9984.<br>
<br>
I&#39;m interested to know if it works or not.<br>
<br>
Thanks,<br>
Ben<br>
<br>
On 9/11/19 1:30 PM, Carlito Nueno wrote:<br>
&gt; Hi Ben,<br>
&gt; <br>
&gt; I was wondering if AP-VLAN is same as dynamic VLAN.<br>
&gt; If so, will this feature work with ar71xx board - QCA9984<br>
&gt; <br>
&gt; I can test it and let you know if I see any issues.<br>
&gt; <br>
&gt; Thank you making ath10-ct!<br>
&gt; <br>
&gt; <br>
&gt; On Mon, Sep 9, 2019 at 12:55 PM Ben Greear &lt;<a href=3D"mailto:greea=
rb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mailt=
o:<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@cand=
elatech.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0This enables a feature flag in the wave-2 firmware =
wmi-services indicating it can send<br>
&gt;=C2=A0 =C2=A0 =C2=A0software-encrypted raw frames.=C2=A0 This should in=
 turn allow the AP-VLAN feature to work.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0For those that know how to use AP-VLANs, please try=
 this wave-2 FW and the latest ath10k-ct<br>
&gt;=C2=A0 =C2=A0 =C2=A0driver(commit:=C2=A0 5e8cd86f90dac966d12df6ece84ac4=
1458d0e95f) and let me know if it works as expected<br>
&gt;=C2=A0 =C2=A0 =C2=A0or not.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0988x<br>
&gt;=C2=A0 =C2=A0 =C2=A05872fe046d90d844a6d3e232e47a6865bac551d7043b2874147=
c077e356b35d8=C2=A0 firmware-2-ct-full-community-22.bin.lede.011<br>
&gt;=C2=A0 =C2=A0 =C2=A04568c3895a101ad28363491ea935f56a48bddea4c1be1889a6b=
a8d151902062a=C2=A0 firmware-2-ct-full-htt-mgt-community-22.bin.lede.011<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0/home/greearb/candela_html/downloads<br>
&gt;=C2=A0 =C2=A0 =C2=A09887<br>
&gt;=C2=A0 =C2=A0 =C2=A02c64ab22159d04cd345b8caffdd76ac95c0409729121a7a4095=
c5192f46013b2=C2=A0 firmware-2-ct-full-community-22.bin.lede.011<br>
&gt;=C2=A0 =C2=A0 =C2=A0c806b8894faf3bbb11004f77196c6d711b9a6c187b1512d84e0=
5fa98a5aba2ab=C2=A0 firmware-2-ct-full-htt-mgt-community-22.bin.lede.011<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0/home/greearb/candela_html/downloads<br>
&gt;=C2=A0 =C2=A0 =C2=A09980<br>
&gt;=C2=A0 =C2=A0 =C2=A04ed106dbe8431945afc6a995765f245f574713095b567df35f1=
397bba5f6fa2e=C2=A0 firmware-5-ct-full-community-12.bin-lede.011<br>
&gt;=C2=A0 =C2=A0 =C2=A07434c84c501e00a24cbca338569ba150a9ec137ee2b9fa52d13=
484794300924c=C2=A0 firmware-5-ct-full-htt-mgt-community-12.bin-lede.011<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0/home/greearb/candela_html/downloads<br>
&gt;=C2=A0 =C2=A0 =C2=A09984<br>
&gt;=C2=A0 =C2=A0 =C2=A09af817e65dc9f195517f05ad25f0eca693632ea03b55739a2e0=
f0fc82e810405=C2=A0 firmware-5-ct-full-community-12.bin-lede.011<br>
&gt;=C2=A0 =C2=A0 =C2=A011e116631555550185e712f70bd29ac41b495bf0ecbfc3334ca=
da8a8c10a42f0=C2=A0 firmware-5-ct-full-htt-mgt-community-12.bin-lede.011<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0/home/greearb/candela_html/downloads<br>
&gt;=C2=A0 =C2=A0 =C2=A04019<br>
&gt;=C2=A0 =C2=A0 =C2=A021a6b5b69e3c1591cb9fe6077971ddadb003cac698f2962d4d8=
d73bc04038bbf=C2=A0 firmware-5-ct-full-community-12.bin-lede.011<br>
&gt;=C2=A0 =C2=A0 =C2=A087111717ec5279125d397bea45386707684ee707a91f6c58298=
818fd02bf567f=C2=A0 firmware-5-ct-full-htt-mgt-community-12.bin-lede.011<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0/home/greearb/candela_html/downloads<br>
&gt;=C2=A0 =C2=A0 =C2=A09888<br>
&gt;=C2=A0 =C2=A0 =C2=A03c9f2e914d2a5eb3a413872239045dfcca105483ba83dd9b293=
e6b8855fda883=C2=A0 firmware-5-ct-full-community-12.bin-lede.011<br>
&gt;=C2=A0 =C2=A0 =C2=A0dcb1bd826e5e1ef266fd7ee04410b44d4474d59f6eca0cc634e=
6432aaf326426=C2=A0 firmware-5-ct-full-htt-mgt-community-12.bin-lede.011<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0/home/greearb/candela_html/downloads<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ben<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A0Ben Greear &lt;<a href=3D"mailto:greearb@candelatec=
h.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mailto:<a href=3D"=
mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</=
a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Candela Technologies Inc <a href=3D"http://www.cand=
elatech.com" rel=3D"noreferrer" target=3D"_blank">http://www.candelatech.co=
m</a><br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0openwrt-devel mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:openwrt-devel@lists.openwrt.org" =
target=3D"_blank">openwrt-devel@lists.openwrt.org</a> &lt;mailto:<a href=3D=
"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwrt-devel@li=
sts.openwrt.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.openwrt.org/mailman/listin=
fo/openwrt-devel" rel=3D"noreferrer" target=3D"_blank">https://lists.openwr=
t.org/mailman/listinfo/openwrt-devel</a><br>
&gt; <br>
<br>
<br>
-- <br>
Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank"=
>greearb@candelatech.com</a>&gt;<br>
Candela Technologies Inc=C2=A0 <a href=3D"http://www.candelatech.com" rel=
=3D"noreferrer" target=3D"_blank">http://www.candelatech.com</a><br>
<br>
</blockquote></div>

--0000000000001360dd05924cfae8--


--===============4803768316395045202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4803768316395045202==--

