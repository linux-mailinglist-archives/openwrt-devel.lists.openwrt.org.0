Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3857CCDB2A
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 06:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sY81R4c9YXwEosSzBMByauyFtCObSiExDoNnducAqP8=; b=n08kHfDSo7y3D5
	p7Mz57pI2Z8a2hFUl0iLVlbL895WdDTe7wk/cK6vgBK28v1gJ+XMUtF8CNSyjW25Q/4tBPP9EmjUj
	J7l3nbk1Sn3el/LFsUiDtCWHD5ZjtLchUw637Ytrd2h+tyoWOQZv7ehhjqU8UsmN8X0bo52T15ZDq
	PiEPmco8U5N7dSKaKTocN0KvhePjdUT3o1wHo5pjBJY0FPhSs5pOoI5Lj5FmwfXDcPOvmTHUnx+wN
	YSEMtJZ2WbKSx9ZvFzNkYglw//+CMLnJZnYP9r9WB7xsonIkmnyG7apA/y/jPC8E73cBi8LVN0dVx
	L8etb+3dC3IGYU1u2tIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHKsv-0002mq-Aq; Mon, 07 Oct 2019 04:44:37 +0000
Received: from out-17.smtp.github.com ([192.30.252.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHKsp-0002mK-UW
 for lede-dev@lists.infradead.org; Mon, 07 Oct 2019 04:44:33 +0000
Received: from github-lowworker-c53a806.ac4-iad.github.net
 (github-lowworker-c53a806.ac4-iad.github.net [10.52.23.45])
 by smtp.github.com (Postfix) with ESMTP id C8ACF6E044D;
 Sun,  6 Oct 2019 21:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1570423469;
 bh=Ae7ShYYDR8oDzPfSJxLgYjiLfYkPxVLA6pqizbSyrjk=;
 h=Date:From:To:Subject:From;
 b=I6ejWaC+GVDYfk6VBcbO48l68RmzWM2YCJnxpb3FmU5nnjJjIdcbyZXi/MMwKIC36
 snNylGj8ajT7bo2YTpVFgMlBjiKeY4h7LFCxrencsWaPLaardZFrOHqcZkP1W3yZHB
 ItwvFBzexHvVTt/J5QdW8f6Vl4OXjuMqUgSFzFqA=
Date: Sun, 06 Oct 2019 21:44:29 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/319bd8-c6df41@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_214432_049304_39DB0D60 
X-CRM114-Status: UNSURE (   2.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.200 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] c6df41: This week's
 update
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

  Branch: refs/heads/master
  Home:   https://github.com/sdwalker/sdwalker.github.io
  Commit: c6df41a01d5efc082c5fb0ea6493a53606ba64a3
      https://github.com/sdwalker/sdwalker.github.io/commit/c6df41a01d5efc082c5fb0ea6493a53606ba64a3
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-10-07 (Mon, 07 Oct 2019)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index-19.07.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
