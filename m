Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB88A161F88
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Feb 2020 04:25:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nx4WBCBPDo823CFl86nQZeKhkzXVvmkdzifH5rVq4wM=; b=iTifvwomt5t7QQkdB8+IIRX8U
	m6mPldEwwLzK0rq7+W0/cH7yxGANA1R82JXE1wReav12fvYV3X301uk5QI2Izc++hpF3mmsTcVSIO
	euUNxju+477jjryGuu1vGJ2xqYgyWnY+8C0X5TvMpRhy69ICj2uze1nKUOFr/Py3BSJEEMGBYPIuL
	G5Bxn7uv8cV2aF4Aqro8bpJ9qvpExWKf1+5/yOUyhWn4kREXbNu53hUbXufajCGcr+9LZIajcJLTj
	nPLypVldj15G9H4X56Bg7iHAilSS87S2RgaHwEN0TPhQlX+1q/BAVscEkDeHrhfZQ/X94ZrbCtCeT
	yeyVAICuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3tVG-00028j-Ta; Tue, 18 Feb 2020 03:24:54 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3tV9-00028F-26
 for openwrt-devel@lists.openwrt.org; Tue, 18 Feb 2020 03:24:49 +0000
Received: by mail-ot1-x336.google.com with SMTP id g64so18143561otb.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 17 Feb 2020 19:24:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pf5y80vfmyho6e+Yc25ifDbSzaC46Mf3KiymPIcisig=;
 b=J7GlO+xWvpZlLFzVDcV34RWt+svvaJQ5Z0lVv6fCgnH19tGDI+fikQJtByUIKT8kGe
 hTbiB2A+tz973Q95Iut9rOunfKh8EMUK14dWGLiqo+ROPpup64HcRKwSMF8kaWDdO8v7
 6S6lcXoLbhkvNL3zWGIgSmNsAuldibq6rfwZEIvkEnEJROZ7jzeZLSANLaGTVPnISw4L
 RzVlS+JSy3jc2sHpMUVmDiwE1lmYHpkXuydpmaOFkVRbrEs7FqD1bIsc9iKckC2jHf08
 Ih5xS41cGYnwK5vvuOs7/ZVRbTDEPMXf+Vj8NPhIKdNVPT01NsBP5i34JxCgHy+WvijW
 uJJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pf5y80vfmyho6e+Yc25ifDbSzaC46Mf3KiymPIcisig=;
 b=emYgjHne2XBmRZ+iOW5TsVNDVoB0qIFg+OewHbFSgJjff6wmaO7mdEedze35kqHnk8
 w7CCdhUZulqf3qYqA/IRKs3aMtxE5v+65nh3yy78/EC19l+4ScyxStwTe02MDdOxxstc
 vZnapwCaYBLIqepRj0VB3hv9cLzTzXTZJYj1XRUCSdstMRnFfNO2beeyZ9XbcvGcd2vm
 NfP8UDDdzvI1dXFpdpuqc/tD8lZcDIqud4JVhywJxhmR08aI6UCVAt7hcfMuFBjXktlu
 guRDuPnFHl+d12KDxRkWtpR2cr0Fus9TgFInIit/5BlHVd0xP7E9tQz4msK1gDAMuU1n
 LsMg==
X-Gm-Message-State: APjAAAW6kiLutWR8HOh3g4FgUQ25DO08HQK7uJxs2C680Ve4+mYkpsWN
 pTfm0M6N74OFB4FZEA4vzHAgv01TV4tC25W4QBY=
X-Google-Smtp-Source: APXvYqzaLm/VeEJoXsB13j0iCa3SvuNzMtCKCaVp4h+bd1xlyXqlfcBqQevcYTe0rr5ehR4xbWiaI9ihaJfu2B8ZYw4=
X-Received: by 2002:a9d:7ccc:: with SMTP id r12mr14967608otn.22.1581996285080; 
 Mon, 17 Feb 2020 19:24:45 -0800 (PST)
MIME-Version: 1.0
References: <5E4B4D26.9030808@candelatech.com>
In-Reply-To: <5E4B4D26.9030808@candelatech.com>
From: =?UTF-8?B?0JrQuNGA0LjQu9C7INCb0YPQutC+0L3QuNC9?= <klukonin@gmail.com>
Date: Tue, 18 Feb 2020 08:24:33 +0500
Message-ID: <CALYz8yovDDQmxyeY_wtb7h+QmUPhw2FtMW4JQk9UPBPJrGoxsQ@mail.gmail.com>
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_192447_127960_A872C264 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [klukonin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 TRACKER_ID             BODY: Incorporates a tracking ID number
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] New ath10k-ct driver,
 supports vlans on 10.1 firmware.
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
Content-Type: multipart/mixed; boundary="===============3717306591308301692=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3717306591308301692==
Content-Type: multipart/alternative; boundary="0000000000009bb7c0059ed1361c"

--0000000000009bb7c0059ed1361c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, Ben.

Does it mean that AP VLAN mode will use software encryption for every tx
frame?

Best regards,
Kirill Lukonin

=D0=B2=D1=82, 18 =D1=84=D0=B5=D0=B2=D1=80. 2020 =D0=B3., 7:34 Ben Greear <g=
reearb@candelatech.com>:

> Thanks to Matthias Larisch for adding support for AP vlans on 10.1 ct
> firmware and testing it out.
>
> Upstream commit ID:
>
> bed49a5f6824fcd8757fd27f6b2a4f6ea933bf2f
>
> If someone can pull this into OpenWRT and test I'd appreciate it.
>
> Thanks,
> Ben
>
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000009bb7c0059ed1361c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello, Ben.<div dir=3D"auto"><br></div><div dir=3D"auto">=
Does it mean that AP VLAN mode will use software encryption for every tx fr=
ame?<br><br><div data-smartmail=3D"gmail_signature" dir=3D"auto">Best regar=
ds,<br>Kirill Lukonin</div></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=82, 18 =D1=84=D0=B5=D0=B2=D1=80.=
 2020 =D0=B3., 7:34 Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.co=
m">greearb@candelatech.com</a>&gt;:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>Thanks to Matthias Larisch for adding support for AP vlans on 10.1 ct firm=
ware and testing it out.<br>
<br>
Upstream commit ID:<br>
<br>
bed49a5f6824fcd8757fd27f6b2a4f6ea933bf2f<br>
<br>
If someone can pull this into OpenWRT and test I&#39;d appreciate it.<br>
<br>
Thanks,<br>
Ben<br>
<br>
-- <br>
Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank"=
 rel=3D"noreferrer">greearb@candelatech.com</a>&gt;<br>
Candela Technologies Inc=C2=A0 <a href=3D"http://www.candelatech.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">http://www.candelatech.com</a>=
<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" rel=3D=
"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div>

--0000000000009bb7c0059ed1361c--


--===============3717306591308301692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3717306591308301692==--

