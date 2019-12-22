Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E007128C88
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 05:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BvaBCBHVPl6Pm73SBI5dqT5pVGi6fBEQ1YpThtTK4fM=; b=N+RsWv5qVoD7jqjOrgRbXYicY
	eeeMgJNGxnxcMnSMYlClYr/lXZy/RXHwQwX68JC2NiAURHjHql08+1NWI0iLcr7vWiSERD4+pSDFU
	9HVqnYqxmpFlV8JhDDonhO6iHrtCfzbAJyAYlGPd82mPXFliSfA4Hm/XPPlR6Nzwmu+gOLRi7BBKI
	ZoGBxi5mEOzZfmYAgSaFw78rEvq1ljBEBS9F+4YYt9z/u9LHRvVURCX3EHmvPmddXy8TFrFJm5NWW
	cYhJPVR9f7mfVvdCaQ03p88z+G2404t6ftIUgmNaPXouDfxqrdLR/Iwg9t7fB6RbzRUCjl3MldXH2
	vyFZgnR9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iisTJ-0006Rd-Ek; Sun, 22 Dec 2019 04:04:01 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iisTC-0006R9-KM
 for openwrt-devel@lists.openwrt.org; Sun, 22 Dec 2019 04:03:56 +0000
Received: by mail-pl1-x635.google.com with SMTP id g6so5809494plt.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 21 Dec 2019 20:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=yO/imtzIkbd/tfwA3sjU7d2GQf0R8wUKZIqR9tysfUU=;
 b=njU4iGlpnVtMBoRitTuSvxLLhm8f6bsMmc6XzQXo0BF/a78C13eOOIkmiA4GaTvL4l
 FB2j4mil4CdGjwiJZzMMh3utYwE2sFsu3vO5nzJAxJYgVlfdCvSj9FnHEdz9m2K6vprx
 8VfN2E6HRUGYvEwURh8OOr8LuI5sndStoYb8Uvn5jnyNoTMUNsXD/5hX4zaS6KtzfVPV
 I1oqJuCvfQtu9Kvi91eAPUHIVC3Ue2aI3CftlQmvGACw1uVNTWqiQkasOmPF4ogbe+NL
 z3uWNxQsjpofC1RMarhpix5nTUNXzWV7NRJvbNAA9fi/FH+X5IBgPXAtgTT0AjtscuSP
 e7Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=yO/imtzIkbd/tfwA3sjU7d2GQf0R8wUKZIqR9tysfUU=;
 b=FCUF6ZGjRCxnSlvoseww/IEC3IfOGoM+UBRg+03eI4l4FBgTVhlCoP2G3caRIw7xit
 nzjrQ1JmSIQJFOgeqE3X3q3L9hfcypuPOHhO3MgCCpxJ6ogm4PqqDAw7ySYTNfFUDqEH
 XiM5qDakPhkVZHpvlLTXYNw8r/tYW3uSqLRvGy3L2eDwAz6yhCOP4FZ4FZ378P4y7K7I
 PpA0ZGXpLRZYsmwD5uwCUXqj7xeY8KxoOAte1Q50oHHeakxNYm038d/wPD+mUN2DYb92
 3gsbdimZQN1chT3BjPiGIA/k3ZA5pO6s35C99D3a4jhPOyTrkMcdx1J3lOX8J5BKIAgq
 wfag==
X-Gm-Message-State: APjAAAVJEdDBE+iVVhdfAmjvgE4UmGMPgUlnPMLLfCCOnpkEEeOjm1is
 UYCXLc7rsOhAHszAQey4AJXPx66yMHhsakpp9Rg5PWwf0J4=
X-Google-Smtp-Source: APXvYqxWfnxG/6VEJ8aIq7EOhXuuOCDyHuw76F9hUw+XzUvGkuP56jLasLoEKz1z83t2F8ZabJ34NP3/6+YFJedynig=
X-Received: by 2002:a17:902:503:: with SMTP id 3mr22469626plf.77.1576987428011; 
 Sat, 21 Dec 2019 20:03:48 -0800 (PST)
MIME-Version: 1.0
References: <d530eff4-2b67-0bfe-78d0-510185e416b9@hauke-m.de>
 <70070970-21c9-3d4e-3af5-0fdb49f2f340@hauke-m.de>
In-Reply-To: <70070970-21c9-3d4e-3af5-0fdb49f2f340@hauke-m.de>
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Sun, 22 Dec 2019 01:03:37 -0300
Message-ID: <CAJq09z72+aP3FY7VykRX7kEzb2PvUc8qLujrBZoZvwwbCr=v4Q@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_200354_698163_5AD637AF 
X-CRM114-Status: UNSURE (   4.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:635 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luizluca[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 status
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
Content-Type: multipart/mixed; boundary="===============1983651689501033634=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1983651689501033634==
Content-Type: multipart/alternative; boundary="00000000000076446f059a42ff02"

--00000000000076446f059a42ff02
Content-Type: text/plain; charset="UTF-8"

Hello,

19.07 page has a Roadmap without dates:
https://openwrt.org/releases/19.07/start#roadmap

It should have some real info with dates, something to make clear that it
does not have a real schedule ("It's ready when it is ready") or simply get
removed.

Regards,
---
     Luiz Angelo Daros de Luca
            luizluca@gmail.com

--00000000000076446f059a42ff02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,</div><div dir=3D"ltr"><br></div><d=
iv dir=3D"ltr">19.07 page has a Roadmap without dates:=C2=A0</div><div dir=
=3D"ltr"><a href=3D"https://openwrt.org/releases/19.07/start#roadmap">https=
://openwrt.org/releases/19.07/start#roadmap</a></div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">It should have some real info with dates, something t=
o make clear that it does not have a real schedule (&quot;It&#39;s ready wh=
en it is ready&quot;) or simply get removed.</div><div dir=3D"ltr"><br></di=
v><div>Regards,<br></div><div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>---=
<br>=C2=A0 =C2=A0=C2=A0 Luiz Angelo Daros de Luca<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:luizluca@gmail.com" target=3D"_blank=
">luizluca@gmail.com</a></div></div></div></div></div></div>

--00000000000076446f059a42ff02--


--===============1983651689501033634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1983651689501033634==--

