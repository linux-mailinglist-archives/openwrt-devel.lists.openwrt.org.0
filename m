Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6001A90D0
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 04:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=++mawffZrwfdOgO86VYkJGHYFVKFDdedWpHqvKeHoJ0=; b=QZ2
	6SmXlJtFTJySBfP9SigSaeAYWlnfszJjS03PCA3b2yvFhFhqdPWxKme+zoC9jf2x2qSWVLjvJtZJ+
	0gc+B0le0V77Eve7UwJDURGk/Cb8vYaulNa8s03bvDGVUa9Xz3COEE/QSGPFjsrgcbg8PLE1y+q72
	iUv6hB8+usWw37ctX0z20nHs1Aq++nglW4B8Vp1j5Je1nfq/3evZvROD8ejRXM63rxtfacPz6099/
	XhEB/FmQw6NaYmarE44TCtRpU17m5Z/Tx6tP4ojBH+uqAVj66LxpuhUTURYZdV/KQXSTPEYaqBMJq
	ZrzGtNSKncGiNEYpXwYpueqC8+1OEvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOXbI-0000X4-PQ; Wed, 15 Apr 2020 02:16:28 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOXbB-0000WH-36
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 02:16:22 +0000
Received: by mail-pj1-x102c.google.com with SMTP id ay6so3253422pjb.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 Apr 2020 19:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=WHkn2dwRxsotjShWtHZDZcBRBPXHPom81xNt/j/c7OM=;
 b=MXcp5dqzR5FmvNtZ6elp1Mq4wTOTLF3kUPqE8OYFR7pYz+AiDjlR7RN5JV62PahbhU
 3uC+/HgWQM8x3I/NYEXtP6IqGGOSW0+012atpBWl0rqNNJVmgLa04lfY4Ls8o6E6/3wd
 EfIxj3jt7HnfRcPgz8I6xdKS55dlncOI61s8ASIFzNGKvAhCnRmvDQSd8Ib/s1HEP+XU
 gS2E6pGQAfmHaTauc/mE8CDKvoiHyx0kecdBgiZAR2l+RKlp1x7+reI58DfCoILALVmO
 Uh0JJk/FrSbbbUR3j3M5wLmL5tZVlOVc1qQ1OgFQmzVK3WFpWUuW0Xygoy/p18ntgB9Z
 KNdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=WHkn2dwRxsotjShWtHZDZcBRBPXHPom81xNt/j/c7OM=;
 b=QVnnDHpEKZw4BxIBVbKoYHmkHuy+QukY0lEOzq3JigctWnYwV28guO75tZkiwOvNsC
 FEpcIVeMy540UXzfW23C9WXK/lBvmJgsU0+M7qplC9LmvkY+p1AZ9DO8wgfGBC0ufkVm
 o7644nYT7Bl9E3ZekDcx8nFq1yF3deQNmHP74XVX3JUzzyxDau9iPQ9JPgKxJckm3ye/
 rIJiIFlWgfs+5urlha2gUsVbB6mv4gXaCZEJMea1HVOxFTu4BHp3HjH66s2my7JwBiVt
 NdbuGRuWYwjwDN6jEtSwiDhNIcjS6O1gZ7l0q783IVr0nx6XDjBWF9lHd3trJv3Ooi7K
 deBw==
X-Gm-Message-State: AGi0PuZt9R8ZYL1VfSp/AhHHhAgRF8qDr77Ba8tpiQT23HU5L6TmLgDQ
 mu0ARkWqSTsAAuu72EpG5ChWxZC3qBWSRTHw/QjqjJTlyvI=
X-Google-Smtp-Source: APiQypLfA8R38kYp+IAM/nyu1BDiM24fCg4l2sKqNFMQb+9HJjOz0lvokitTJOUmFrASK5y3nFpSpKqr1ize5QbHAWg=
X-Received: by 2002:a17:902:9347:: with SMTP id
 g7mr2531078plp.77.1586916978815; 
 Tue, 14 Apr 2020 19:16:18 -0700 (PDT)
MIME-Version: 1.0
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Tue, 14 Apr 2020 23:16:07 -0300
Message-ID: <CAJq09z4ZJHNf9ngaAcGjJcUvwF9UpHh-uUsAVyGvHhgvr4XGkw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 koen.vandeputte@ncentric.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_191621_157116_4C801699 
X-CRM114-Status: UNSURE (   4.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luizluca[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] openwrt-18.06 broken since kernel bump 4.14 to
 4.14.169
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
Content-Type: multipart/mixed; boundary="===============2206386831230645449=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2206386831230645449==
Content-Type: multipart/alternative; boundary="000000000000cf78cd05a34ae6d1"

--000000000000cf78cd05a34ae6d1
Content-Type: text/plain; charset="UTF-8"

Hello,

I was doing a clean build for 18.06 and got:

x86 instruction decoder selftest (X86_DECODER_SELFTEST) [N/y/?] (NEW)
aborted!

It looks like kernel bump happened both in openwrt-19.07
(eca8a2ee0d4404d9454cac473ee8d4d1ce7152e4) and openwrt-18.06
(4eba86820fd3d0ccf1f8e6addaa24ed6cd994b2f) but only openwrt-19.07 got a fix
(d91b52b1a2edd3645c88b29deb1091ae5f82fda8)

Regards,

---
     Luiz Angelo Daros de Luca
            luizluca@gmail.com

--000000000000cf78cd05a34ae6d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I was doing a clean build for 18=
.06 and got:</div><div><br></div><div>x86 instruction decoder selftest (X86=
_DECODER_SELFTEST) [N/y/?] (NEW) aborted!<br></div><div><br></div><div>It l=
ooks like kernel bump happened both in openwrt-19.07 (eca8a2ee0d4404d9454ca=
c473ee8d4d1ce7152e4) and openwrt-18.06 (4eba86820fd3d0ccf1f8e6addaa24ed6cd9=
94b2f) but only openwrt-19.07 got a fix (d91b52b1a2edd3645c88b29deb1091ae5f=
82fda8)</div><div><br></div><div>Regards,</div><div><span style=3D"font-fam=
ily:monospace"><span style=3D"color:rgb(0,0,0)"></span><br></span><div><div=
 dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><=
div dir=3D"ltr"><div>---<br>=C2=A0 =C2=A0=C2=A0 Luiz Angelo Daros de Luca<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:luizluca@gmai=
l.com" target=3D"_blank">luizluca@gmail.com</a></div></div></div></div></di=
v></div>

--000000000000cf78cd05a34ae6d1--


--===============2206386831230645449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2206386831230645449==--

