Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CE0E2559
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 23:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tHqSCiL6mLdnAqkhRdnsEbsVCMnymy4VeF7WMDL8UeE=; b=UPZ
	lF4YBDm+OxmOXxtxG/I2jgksRRXn0GzHAT7dl8KxiegicrELIXJXRLaP4Z1tHAdKfpuGH7439qWMp
	rzSFsT6Nsa6UMjdVXcjCYvEytV0MG7UvYQHyvdrDhiG3UfNqbtC0GqfrfrU7RyHx92lyJIMp+8b1E
	u/6O7jysrx7L2fHqtBchwhyBD0CrNYZTvlbfeH3bXq0UQ/369a53jhvACSCRjSKqtaEk5EfJpE0Gn
	JSVJsrQfLeivSFMKGWQIlhsbtyiIaEkBKOazJrIPcuEvxLQKtefveSAFoJmuAQpowEAVgADbK8uoP
	/sIqYNAkc6HtB75dfex+mi7YUt6MOtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOCz-0006mC-FG; Wed, 23 Oct 2019 21:30:21 +0000
Received: from rapiduswireless.com ([204.232.164.51]
 helo=825679-web1.circlegraphics.ca)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOCr-0006gh-Gu
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 21:30:14 +0000
Received: from [192.168.0.2] (S010600fc8dfd3c53.vf.shawcable.net [70.68.21.70])
 by 825679-web1.circlegraphics.ca (Postfix) with ESMTPA id B9752500B4F
 for <openwrt-devel@lists.openwrt.org>; Wed, 23 Oct 2019 17:30:00 -0400 (EDT)
To: openwrt-devel@lists.openwrt.org
From: Nick Dennis <ndennis@rapiduswireless.com>
Message-ID: <b247e681-6f9a-5e3d-2744-ee5bdb460d1d@rapiduswireless.com>
Date: Wed, 23 Oct 2019 14:29:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_143013_622744_6F4FD674 
X-CRM114-Status: UNSURE (   0.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: [OpenWrt-Devel] How to trigger wifi reload from wifi.lua
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
Content-Type: multipart/mixed; boundary="===============0521583225768111260=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0521583225768111260==
Content-Type: multipart/alternative;
 boundary="------------D878507583C41C9D48533A2D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D878507583C41C9D48533A2D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On the Luci GUI, the current behaviour of Save&Apply of changes to the 
items in wifi.lua and wireless_modefreq.htm is to invoke a network 
restart. I would like to to change this behavior to invoke wifi restart 
directly from wifi.lua. I'm guessing this involves disabling the network 
restart and adding syntax to wifi.lua, possibly as an invocation line in 
the map's on_commit() instantiation.

Thanks.

--------------D878507583C41C9D48533A2D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <span style="color: rgb(34, 34, 34); font-family: Helvetica, Arial,
      sans-serif; font-size: 15px; font-style: normal;
      font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; background-color: rgb(255, 255, 255); text-decoration-style:
      initial; text-decoration-color: initial; display: inline
      !important; float: none;">On the Luci GUI, the current behaviour
      of Save&amp;Apply of changes to the items in wifi.lua and
      wireless_modefreq.htm is to invoke a network restart. I would like
      to to change this behavior to invoke wifi restart directly from
      wifi.lua. I'm guessing this involves disabling the network restart
      and adding syntax to wifi.lua, possibly as an invocation line in
      the map's on_commit() instantiation.<br>
      <br>
      Thanks.<br>
    </span>
  </body>
</html>

--------------D878507583C41C9D48533A2D--


--===============0521583225768111260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0521583225768111260==--

