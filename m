Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2985C1C4700
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 21:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MmL6At6EfOZL2rqAgriSnf6SqWugN+CftTFjR/J9auk=; b=aId
	sh472+KdxTpWXC7tfTFySL/NjBcD74tvqeA2S09j6yOh0RUvf3j/JBg1JrWWTthBhgQFLxCEx50Ue
	Rb+g7ALuT78rGcNMcLHNlcEaHHAo2O6ZQYjSop2KxHjoDLjBk4MrEpNtjGXz1iMUcZhUX35lNcUiX
	GmjepqxlxD+WQc3MST3hdaXpfDkU3TQX0ZBCvVQTEI0FdeK0Ah1iB7SEvtDtM6pKiu/3FmAjgxz8y
	+QTQf+HXFxCDVXj2yJr40vzUV+/0YKfAGiPK3PFKzFeRnnGIkmhdAPRPeJDgrmdKPnapbaw1P7uMn
	ZxN6HdrSDKVL350WYKkQYpVIeaY4jvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgiQ-0002CL-Sb; Mon, 04 May 2020 19:25:22 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgiB-00017Y-S8
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 19:25:09 +0000
Received: by mail-oi1-x22e.google.com with SMTP id o7so7717371oif.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 May 2020 12:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=+T2tKTJJJ2FvZ/wq4XBTolS027Okz04jIzP7k+RYgzo=;
 b=fMmYULjOpp5ME0+E6cMCi3V/3/3/DbTx87oLCT231mja/ekjDyA0HwPTtkNEC1cJel
 svApHqDsq/DMmtu8FWv+TPRtAc+DbhzRHJYbRS/6yxrtvP83DrwXzsgP3TgZk2SrpgSy
 meDtSgBGmCX1SPtL7hUEIXHLX4x+kdXd8fpskpe7b9fHaWrVAWgBFIfUnvIGq5sZkwb5
 Jv/wZB8fL3SDIjgL6/4Z4kmZhMyGUgPzszle2VdFoLN0bfkSEMC+2ct9ofwWTZzLTcQ/
 t5E23O7w6iBQfBMvYTW11YC4/x0Rqdw+Qjzy05qLAlQRoSRPREN1pUQDDeuVj/q2tByf
 ndbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=+T2tKTJJJ2FvZ/wq4XBTolS027Okz04jIzP7k+RYgzo=;
 b=jyniJVW0J1DmRTTgNvhc6Cg6p2XkpGJK9b5AgQ0mHsnA6tFVRR1tctd3ANY+/PHlt5
 Vm7yyB9oBTVBRMYD83z+3bLqfZVJNVGgsCv7xUUYnCAwzs7bxxne0krjFlyvcFZFJuzr
 jneGlHGKzisZeCAOc7ydsUqPyCa3gnav/WM/i0AGoVwOe+C6n1OPexhhguuVQSkQ4ZRR
 4XFQLC65QNfFMqIMI+Zz7u7xogd/23pbEcB7C+ZOaJlyvcG6sDWgzhUSx9/XL8Ke67dL
 Oh+5B4wlZjTA9ew4ngg/g7toHPJO+ohCmzNniG7ZPCRBuBnlSiPvt2dQqZK+E0iFMb+u
 1ZGA==
X-Gm-Message-State: AGi0PuZNxZ7URciHInKNM0ybucp2xhSxLZd5J8Fz/usUbxCkIVhbKOAy
 NA3N03oxVnxN/ubdo9PJYNpZvCikhOemeOXWaRxBqTgkfbdP/w==
X-Google-Smtp-Source: APiQypJZw2svG4TPzwbNbnzhMwYJ6i5e0NHYLvzaqYUY4F5npUHEHNcSkrNm748OR2oMegzJg4oQdwSy38TGOTrs3MQ=
X-Received: by 2002:aca:4d5:: with SMTP id 204mr9469905oie.120.1588620305950; 
 Mon, 04 May 2020 12:25:05 -0700 (PDT)
MIME-Version: 1.0
From: Gracias Amigou <puchapapa01@gmail.com>
Date: Mon, 4 May 2020 13:23:57 -0600
Message-ID: <CABH8e0+-TaVCT7AvHRYyemTuzhx=BbNN1BaZPJQj6OJ6KJwM5A@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_122507_936833_F3E38755 
X-CRM114-Status: UNSURE (   3.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [puchapapa01[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [puchapapa01[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] FULL CONE NAT in OpenWrt
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
Content-Type: multipart/mixed; boundary="===============0797145575605390646=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0797145575605390646==
Content-Type: multipart/alternative; boundary="00000000000004ed1a05a4d77d32"

--00000000000004ed1a05a4d77d32
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please add this package as official:

*Posts:*

   1. xt_FULLCONENAT -- Implementing RFC 3489 full cone SNAT in OpenWrt
   <https://forum.openwrt.org/t/xt-fullconenat-implementing-rfc-3489-full-c=
one-snat-in-openwrt/14816>
   2. [12/8=E6=9B=B4=E6=96=B0]OpenWrt =E4=B8=8A=E5=AE=9E=E7=8E=B0 NAT1 (Ful=
l cone NAT) =E7=9A=84=E6=96=B9=E6=B3=95=EF=BC=8C=E6=97=A0=E9=9C=80 DMZ/UPnP=
 - OPENWRT=E4=B8=93=E7=89=88
   <https://www.right.com.cn/forum/thread-319827-1-1.html>
   3. =E4=BB=8EDNAT=E5=88=B0netfilter=E5=86=85=E6=A0=B8=E5=AD=90=E7=B3=BB=
=E7=BB=9F=EF=BC=8C=E6=B5=85=E8=B0=88Linux=E7=9A=84Full Cone NAT=E5=AE=9E=E7=
=8E=B0 | ChionLab
   <https://blog.chionlab.moe/2018/02/09/full-cone-nat-with-linux/>


*Git:*
=E2=80=A2 GitHub - LGA1150/openwrt-fullconenat: Netfilter and iptables exte=
nsion
for full cone NAT ported to OpenWrt.
<https://github.com/LGA1150/openwrt-fullconenat>

--00000000000004ed1a05a4d77d32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please add this package as official:<br><div><br></div><di=
v><b>Posts:</b></div><div><ol><li><a href=3D"https://forum.openwrt.org/t/xt=
-fullconenat-implementing-rfc-3489-full-cone-snat-in-openwrt/14816">xt_FULL=
CONENAT -- Implementing RFC 3489 full cone SNAT in OpenWrt</a></li><li><a h=
ref=3D"https://www.right.com.cn/forum/thread-319827-1-1.html">[12/8=E6=9B=
=B4=E6=96=B0]OpenWrt =E4=B8=8A=E5=AE=9E=E7=8E=B0 NAT1 (Full cone NAT) =E7=
=9A=84=E6=96=B9=E6=B3=95=EF=BC=8C=E6=97=A0=E9=9C=80 DMZ/UPnP - OPENWRT=E4=
=B8=93=E7=89=88</a></li><li><a href=3D"https://blog.chionlab.moe/2018/02/09=
/full-cone-nat-with-linux/">=E4=BB=8EDNAT=E5=88=B0netfilter=E5=86=85=E6=A0=
=B8=E5=AD=90=E7=B3=BB=E7=BB=9F=EF=BC=8C=E6=B5=85=E8=B0=88Linux=E7=9A=84Full=
 Cone NAT=E5=AE=9E=E7=8E=B0 | ChionLab</a></li></ol></div><div><b><br></b><=
/div><div><b>Git:</b><br></div><div>=E2=80=A2=C2=A0<a href=3D"https://githu=
b.com/LGA1150/openwrt-fullconenat">GitHub - LGA1150/openwrt-fullconenat: Ne=
tfilter and iptables extension for full cone NAT ported to OpenWrt.</a><br>=
</div></div>

--00000000000004ed1a05a4d77d32--


--===============0797145575605390646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0797145575605390646==--

