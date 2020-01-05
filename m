Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD3E130A17
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 23:06:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:To:From:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CCw+U6zaEXONrF3JK/gaLVOKom+qhDusMadv/rJQ+jE=; b=gkOTanaxpgLx6dhAQIwRaU5/x3
	g0Paq5u6BQvlmjWWKhj8yP4hE3ZexE6zm0uX6qI4Z+8ch1n0+I/t2XytAfOMokd9GnvY14UfPg4wm
	X9Bkx+LukEsI1vbIakLe8D/OV0LpiadcHhZ/7klRa7ZuFlYil3ku9P0UjBks6pMAvPYU4rfKmZd1S
	1wPNch3FU52DRtc9QRe9T0T1s3XMBAADR2l6OwbRj+I2rRdEALVbDGNBM9KOqO/2NR64ArqQB5jgu
	Nh7cov9WS53ErDgmX1hvM+T4bNb8omgPoJ8zcCYFlLB5PImcBZrcz8U+Xq/HgDUTgbFNF2aBO1NmO
	QkdeaXjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioE2K-00065L-60; Sun, 05 Jan 2020 22:06:16 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioE2C-00064n-Ju
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 22:06:11 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 47rXlQ2GGRzKmcb
 for <openwrt-devel@lists.openwrt.org>; Sun,  5 Jan 2020 23:05:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id 8eeCRLOyyrrK for <openwrt-devel@lists.openwrt.org>;
 Sun,  5 Jan 2020 23:05:52 +0100 (CET)
From: =?UTF-8?Q?Andreas_Br=c3=a4u?= <ab@andi95.de>
To: openwrt-devel@lists.openwrt.org
Message-ID: <7227615e-804d-82ff-fec6-745d8c2b5b11@andi95.de>
Date: Sun, 5 Jan 2020 23:05:52 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_140608_965690_675030A4 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.241.56.151 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: [OpenWrt-Devel] Google Summer of Code - ideas wanted
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
Reply-To: "gsoc-org-admins@freifunk.net" <gsoc-org-admins@freifunk.net>
Content-Type: multipart/mixed; boundary="===============0352268357225534100=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0352268357225534100==
Content-Type: multipart/alternative;
 boundary="------------107AFAFC157BD9899420D2FD"

This is a multi-part message in MIME format.
--------------107AFAFC157BD9899420D2FD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi there,

I wish you all the best for 2020!

We're planning to apply for Google Summer of Code (GSoC) again. GSoC is
a program by Google to bring student developers into Open Source projects.
tl;dr: Google pays students for 3 months in summer developing software
for an open source project. Therefore we need to collect ideas for
possible projects. People from the projects will act as mentors for
students. If you want to know more about that, please visit
https://summerofcode.withgoogle.com/

Freifunk acts as umbrella organization since 2008 for several projects
like OpenWRT, ninux, qaul.net, guifi.net, retroshare, wlan slowenija,
altermundi.net, ...

To apply as organization we need a list of project ideas, we collect at
https://projects.freifunk.net. Now it's the best time to update or add
ideas. This can be done via github:
https://github.com/freifunk/projects.freifunk.net-contents

The application period will start on January 14. The best case would be
if you add your ideas until this deadline :) You can find the complete
timeline at https://summerofcode.withgoogle.com/how-it-works/#timeline

If you know people within your community that would be interested in
mentoring projects, feel free to distribute this email. Also, if you
know students that would be interested in doing projects for one of our
organizations, please tell them!

If you have any questions, just send me an email!

Best regards,

Andi




--------------107AFAFC157BD9899420D2FD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body dir="auto" style="word-wrap: break-word; -webkit-nbsp-mode:
    space; line-break: after-white-space;" text="#000000"
    bgcolor="#FFFFFF">
    Hi there,<br>
    <br>
    I wish you all the best for 2020!<br>
    <br>
    We're planning to apply for Google Summer of Code (GSoC) again. GSoC
    is a program by Google to bring student developers into Open Source
    projects. <br>
    tl;dr: Google pays students for 3 months in summer developing
    software for an open source project. Therefore we need to collect
    ideas for possible projects. People from the projects will act as
    mentors for students. If you want to know more about that, please
    visit
    <meta charset="utf-8">
    <a href="https://summerofcode.withgoogle.com/">https://summerofcode.withgoogle.com/</a><br>
    <br>
    Freifunk acts as umbrella organization since 2008 for several
    projects like OpenWRT, ninux, qaul.net, guifi.net, retroshare, wlan
    slowenija, altermundi.net, ...<br>
    <br>
    To apply as organization we need a list of project ideas, we collect
    at <a class="moz-txt-link-freetext"
      href="https://projects.freifunk.net">https://projects.freifunk.net</a>.
    Now it's the best time to update or add ideas. This can be done via
    github:
    <meta charset="utf-8">
    <a href="https://github.com/freifunk/projects.freifunk.net-contents">https://github.com/freifunk/projects.freifunk.net-contents</a><br>
    <br>
    The application period will start on January 14. The best case would
    be if you add your ideas until this deadline :)
    <meta charset="utf-8">
    You can find the complete timeline at
    <meta charset="utf-8">
    <a href="https://summerofcode.withgoogle.com/how-it-works/#timeline">https://summerofcode.withgoogle.com/how-it-works/#timeline</a><br>
    <br>
    If you know people within your community that would be interested in
    mentoring projects, feel free to distribute this email. Also, if you
    know students that would be interested in doing projects for one of
    our organizations, please tell them!<br>
    <br>
    If you have any questions, just send me an email!<br>
    <br>
    Best regards,<br>
    <br>
    Andi<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------107AFAFC157BD9899420D2FD--


--===============0352268357225534100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0352268357225534100==--

