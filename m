Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B60D14E8F6
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 07:53:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r/Ua2eiUdLdmcHrShDehib34l/AQ0UeU4EoENQkuk8k=; b=hr9
	2p5+MHXxy/cVmSwWweBp6GHoclQHlqZWtJLdAod8hLfb1CBMiE+C+qtfH7jnZ/D2fZa4YxBIFiZuM
	YeEgqlkQ1Yo81oFoYnGs9/k//cotcJn7GPo7zWaK5ludGZy12KNzTol0A2gkBvKhvmCz+rNlPCsDy
	nEvPLScHdCUWjWJRax24mk3aWxQv2dhcrtPBODYAbxFrM1/FgbCpdbO0BvP6xSX7F2qyxiu01PmLc
	i490h8OobuirnO1QBX4qTdasVONuZkgGJyl+cW5Sf2G9x15F97PulUPmImvnYKNlVyC0l5IAuxFj5
	LgFFnk338QXTLiSDrSy7SBocKIriZOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixQBM-00038L-AG; Fri, 31 Jan 2020 06:53:36 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixQBE-00037u-8T
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 06:53:30 +0000
Received: by mail-pj1-x102f.google.com with SMTP id ep11so2408920pjb.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 Jan 2020 22:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BFM/YQX8p6HrXwa3oEkZBvDlXJC/4p3zU0hDM11gqlc=;
 b=YG5QZvxQIxoaPTkb/rpP9CPhpex7RlCisEdLkrfvXTWSeObKPlG5UVRyTVOHacLZ3w
 I+koBNqAnIlm6AOyfnR0JB5mNz2DIB+8/9qI31glbqOpRrX5L0r+ovCjdGL6xJAZZ8ZD
 orQay9PcbyRO4vWxTnD9+q3wQEdF3qq127p3q8BpNH1QgCdPQJQqG75q6rvxJ/ZfKVeT
 H8D7bP0oKWb5wUF5591d2zjIkvYWJzUuxOTdf62RCqevzA4rbbZR5z6vFmj1KUTjKisM
 jHqUolBMom2bX+buahqRinWRCu8UdcdlstSEcGLeLGIFi25TGg9MrJsPxW+3ais2OUVQ
 L4Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BFM/YQX8p6HrXwa3oEkZBvDlXJC/4p3zU0hDM11gqlc=;
 b=tnaJoBGFEpHj8eQOTZR0weFoSU2Be4QFzCHOCQ/ENWeD4Ybt8xZEKsQMjAh1FRtLWO
 MiJytYFyfJBOn0Z+UxtZRPS8961CkMgz5o+3gGtrvYrMSXMm4v76VwjHflGXXOqKk/Zg
 Lv421wystGxuLiMyivDNk6KJInNcj9Aod4R637yRH3o9Sh4Z5oxgwv8qeUMYzbqMylKk
 rzNa5kDwZfQNRdVTpRRi9R/nGakN8EEfE9BXGR/aQsSbYakGtyI6Z8PKt5xVz5LHWf/Y
 kmCYND9akBlVg+tMm985+Kc0KBspaObXHbDVIXe+yn0PONX0ekUqVuOGIFA+iI0EOeWj
 uDLQ==
X-Gm-Message-State: APjAAAUZM6CUsaw+N9AzHAccg/+BMPSCaIWsVxWQfS7hipCsvvOHvzY3
 jmsSHIrpoqUchhFpHyQh4LaZG8AEykJX8q6hxLIbdXoRUmU=
X-Google-Smtp-Source: APXvYqyfaNKIGFEFIbjZy31Uivq5GxXyMjYu0jP71y1O8Jc+u+YZN6gy0vT/vneyYGTDi2FcYXnEpS9hTmPx20nNNMI=
X-Received: by 2002:a17:90a:da03:: with SMTP id
 e3mr10794631pjv.57.1580453605905; 
 Thu, 30 Jan 2020 22:53:25 -0800 (PST)
MIME-Version: 1.0
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Fri, 31 Jan 2020 03:53:14 -0300
Message-ID: <CAJq09z63-O6xaxpBDLMdHF54Zivc8tmh1Y_AR_em5xtC+T9YCw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_225328_301043_8972F188 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luizluca[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Random data on rootfs_data for tp-wr2543nd-v1 only
 with ath79
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
Content-Type: multipart/mixed; boundary="===============6144683638660645346=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6144683638660645346==
Content-Type: multipart/alternative; boundary="000000000000c3997f059d6a07ba"

--000000000000c3997f059d6a07ba
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to debug
https://bugs.openwrt.org/index.php?do=details&task_id=2742.
So far, what I discovered:

1) it happens only in master, 19.07 is fine on both ath79 and ar71xx
2) it happens only in ath79. ar71xx is fine in master
3) rootfs_data (mtd4) contents keeps changing on each read. Each time I
run: "dd if=/dev/mtd4 | md5sum - " I get a different hash.
4) I get the random data reading flash from firmware (mtd1), rootfs (mtd3)
or rootfs_data(mtd4), but always around the region where rootfs_data is
(after squashfs). I could not identify the exactly upper and lower
boundaries where it happens (addresses are random).
5) I also happens without mounting jffs2 (failsafe)
6) Most mtd4 is 0xff (as expected). Only sparse bytes or sequence of bytes
contains other values.
7) I looked for a string inside mtd4 (if I came some a buffer), but changes
where too small and without any sequence of printable chars.

There are plenty of longs in the bug report.

Has someone faced something similar?

Regards,
---
     Luiz Angelo Daros de Luca
            luizluca@gmail.com

--000000000000c3997f059d6a07ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m trying to debug=C2=A0<a =
href=3D"https://bugs.openwrt.org/index.php?do=3Ddetails&amp;task_id=3D2742"=
>https://bugs.openwrt.org/index.php?do=3Ddetails&amp;task_id=3D2742</a>.</d=
iv><div>So far, what I discovered:</div><div><br></div><div>1) it happens o=
nly in master, 19.07 is fine on both ath79 and ar71xx<br></div><div>2) it h=
appens only in ath79. ar71xx is fine in master</div><div>3) rootfs_data (mt=
d4) contents keeps changing on each read. Each time I run: &quot;dd if=3D/d=
ev/mtd4 | md5sum - &quot; I get a different hash.</div><div>4) I get the ra=
ndom data reading flash from firmware (mtd1), rootfs (mtd3) or rootfs_data(=
mtd4), but always around the region where rootfs_data is (after squashfs). =
I could not identify the exactly=C2=A0upper and lower boundaries where it h=
appens (addresses are random).</div><div>5) I also happens without mounting=
 jffs2 (failsafe)</div><div>6) Most mtd4 is 0xff (as expected). Only sparse=
 bytes or sequence of bytes contains=C2=A0other values.</div><div>7) I look=
ed for a string inside mtd4 (if I came some a=C2=A0buffer), but changes whe=
re too small and without any sequence of printable chars.</div><div><br></d=
iv><div>There are plenty of longs in the bug report.</div><div><br></div><d=
iv>Has someone faced something similar?</div><div><br></div><div>Regards,<b=
r clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div>---<br>=C2=A0 =C2=A0=C2=A0 Lu=
iz Angelo Daros de Luca<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a hre=
f=3D"mailto:luizluca@gmail.com" target=3D"_blank">luizluca@gmail.com</a></d=
iv></div></div></div></div></div>

--000000000000c3997f059d6a07ba--


--===============6144683638660645346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6144683638660645346==--

