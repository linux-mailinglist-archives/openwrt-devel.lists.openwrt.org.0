Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2031C13780E
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 21:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iRCy6DpQ/sWK+xgDuWq3x5l8w+4eNxI9I4UakX3qPxQ=; b=pJy
	2MBxlqmOP2z7ZyaltAlM+aZrAkcDEs/Idu7cSDmxzTg7A60m0iNwkN0+SZStYUC/8C7BK1btt7qVQ
	FX+B1JAS4iwIjzENH/zcVQlvQhzAWaSc3VMSHyvzkdwVsI8ZBE/um4AamH0bd8iJEO4o1aMkhmGZa
	4702oq1p0V+jHox03Zz8BjA9N1D00ToP4MIr9sJQ+G7aXlxoqi8qRJN1Eys713kTcu0xjaP1kjUMS
	mP7qXDPVbyUnDE8PseIWRMyBuawAGgIEfjvoKD9xKpqqKrGR0rz6fd164djNpeSfcI0TKupmK9qQN
	bCXl7MDEcINfjud5cPacrg5YL4fz1tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq15F-0000b2-ER; Fri, 10 Jan 2020 20:40:41 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq151-0000Zj-RE
 for openwrt-devel@lists.openwrt.org; Fri, 10 Jan 2020 20:40:29 +0000
Received: by mail-pl1-x62b.google.com with SMTP id s21so1275360plr.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Jan 2020 12:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=OMn0cA7nSD4M+AVSP1ryVNlD5B63su6NZYEd8vAtZA8=;
 b=IuIf/oI+g7E7CiMvO2EPIpwj7EtePkhz0LYxsKjXOr7JZ1WM4AC2XGQ3t0bw+rxF6L
 W4shaD5vIokPqUIzjD26jGHgJqcD/R0CfZDkHuyR/hbzulGToiAeR4jinqEsMus3hSTb
 MINM0RyZcj3VJy/n4oFoWPikTIi+MZeRclQypL9N874aEJjARFT6pgcyDbKSHrARlapJ
 AmIQLCKuFSu+ddLW+fcE4tr0nASwpciU0YoP4yIB8uRlIKNjDKxwME1wZkH/xw/Xc3qI
 dNCYxar0LQgpkxsZlq9NhpD9QebSxL/C74dkzma9kbePKHAndy+VlnY3sA8VMTXizKXw
 repQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=OMn0cA7nSD4M+AVSP1ryVNlD5B63su6NZYEd8vAtZA8=;
 b=fK3bxdZ2UlsVlnBtw8Epxm9D7bpiT+N4Bnhjm+8yii+dFamaZeBK9Is9H+1L3srh4Z
 rOxk0ogQ0T+FOH2LttegzRO2mlXjGWRfQY9EPg3S7vcp9ClmLSFMvqxfNbPZgN3dbmt7
 TuRsgRbjAmBGg5XsaxypUzOPpyQObQcXjdVUYdKDfFvg8FYXov4hN5ESCgR2d/tE64f/
 qzYJPwQsV19F686+1iNSQ6Sd+kUstMj3/WtjuwKc4vdKSBhRicngFqW2VOFOamEZPmIL
 CGRQv7HXnqSHbeySIrcf33UABkmu35LYYNm5ODxdDmdLgrl2sRrmW5zopCJPep9RK9S0
 F8sw==
X-Gm-Message-State: APjAAAVsgXzpnGYauQeXWLLenZYhkOKy2U2ta7IWKEzh83IVJgw22vL5
 q9pQwKZ3k+sUNinAtIP47KBSR217LlDt7nC+ULtoHLrW
X-Google-Smtp-Source: APXvYqxRPvc8UhMHXwkyzH4tYLYsUgivG6IEZQbSzs8bbycpVjkjIm3dzxjCShHygnoWCkf98bE6Gc40BlIK/ql6dYA=
X-Received: by 2002:a17:90a:7781:: with SMTP id
 v1mr7157440pjk.57.1578688824373; 
 Fri, 10 Jan 2020 12:40:24 -0800 (PST)
MIME-Version: 1.0
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Fri, 10 Jan 2020 17:40:13 -0300
Message-ID: <CAJq09z7Li_ddnDw34AtixVDkYdPxOZoBa4MAUoVa5P5kvMSM_A@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_124027_905965_801EB879 
X-CRM114-Status: UNSURE (   4.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] ToH dump missing HW version
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
Content-Type: multipart/mixed; boundary="===============3413279251181768437=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3413279251181768437==
Content-Type: multipart/alternative; boundary="000000000000967517059bcf2271"

--000000000000967517059bcf2271
Content-Type: text/plain; charset="UTF-8"

Hello,

I was using https://openwrt.org/_media/toh_dump_tab_separated_csv.zip from
https://openwrt.org/supported_devices and it is missing the hardware
version.
It is also missing the "unsupported features". Both are quite important for
selecting a device.
Wiki dynamic table does include them.

Can someone add it?

Regards,

---
     Luiz Angelo Daros de Luca
            luizluca@gmail.com

--000000000000967517059bcf2271
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I was using <a href=
=3D"https://openwrt.org/_media/toh_dump_tab_separated_csv.zip">https://open=
wrt.org/_media/toh_dump_tab_separated_csv.zip</a> from=C2=A0<a href=3D"http=
s://openwrt.org/supported_devices">https://openwrt.org/supported_devices</a=
> and it is missing the hardware version.</div><div>It is also missing the =
&quot;unsupported features&quot;. Both are quite important for selecting a =
device.</div><div>Wiki dynamic table does include them.</div><div><br></div=
><div>Can someone add it?</div><div><br></div><div>Regards,</div><div><br><=
/div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div>---<br>=C2=A0 =C2=A0=C2=A0 Luiz Angelo D=
aros de Luca<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto=
:luizluca@gmail.com" target=3D"_blank">luizluca@gmail.com</a></div></div></=
div></div></div>

--000000000000967517059bcf2271--


--===============3413279251181768437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3413279251181768437==--

