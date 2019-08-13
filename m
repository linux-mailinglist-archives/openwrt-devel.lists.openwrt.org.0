Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2E58AC5F
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 03:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kEqQbcxf7s4dXnyMAgfrOFF4ra7bNt41+3nqXz+yLhE=; b=s+lETB+Tk0WSeR
	68f7ulwPZeQUmqL4Kq6n2vUgbzj4czzkrrwhGQWwc+77ZcQf1jeLG8xrsJM20s1RpUs1hd92/mk5w
	3VHnb2YyYUdVsmM1eeVcjIanfPUKeIeBIqHu05yH8+wvc7DvoCIMh9zmYY3Pr0gZY1s4ncbW4vMoU
	3Wy3IkNyaN/26/TCyC35TgKqjp/WgCF92GFWEKQSZjeQEJKZ9Jczpb/+Nwb2eK0HtC2wu2vGW3Qft
	MgWIpe/d67PW5QqSmwjocvcvLxRm0ALpKurVzX0kwUl6MTsqaiVs5AtnC0cljxcZ2VL3VSx9OCOL4
	KvOqq5qgGpAupYg1bpDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxLKN-0005jB-AQ; Tue, 13 Aug 2019 01:10:19 +0000
Received: from smtp-auth.no-ip.com ([8.23.224.60] helo=out.smtp-auth.no-ip.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxLK7-000536-Ar
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 01:10:04 +0000
X-No-IP: flyn.org@noip-smtp
X-No-IP: flyn.org@noip-smtp
X-Report-Spam-To: abuse@no-ip.com
Received: from www.flyn.org (unknown [68.134.9.136])
 (Authenticated sender: flyn.org@noip-smtp)
 by smtp-auth.no-ip.com (Postfix) with ESMTPA id A94D03E8;
 Mon, 12 Aug 2019 18:09:49 -0700 (PDT)
Received: from imp.flyn.org (localhost [127.0.0.1])
 by www.flyn.org (Postfix) with ESMTP id A5175E40092;
 Mon, 12 Aug 2019 21:09:48 -0400 (EDT)
Received: by imp.flyn.org (Postfix, from userid 1101)
 id DB5A622A019E; Mon, 12 Aug 2019 21:09:47 -0400 (EDT)
Date: Mon, 12 Aug 2019 21:09:47 -0400
From: "W. Michael Petullo" <mike@flyn.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20190813010947.GA27057@imp.flyn.org>
References: <20190602215628.GA22193@imp.flyn.org>
 <20190603073725.GI13432@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603073725.GI13432@meh.true.cz>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_181003_394015_DEC39D0A 
X-CRM114-Status: UNSURE (   5.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [8.23.224.60 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Running Raspberry Pi 3 OpenWrt in QEMU
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> Can you please create a ticket on bugs.openwrt.org with a complete kernel
> crash report? You should provide complete kernel crash, copy&paste it from the
> log, this stripped down version doesn't help much. Thanks.

Please see https://bugs.openwrt.org/index.php?do=details&task_id=2440.

-- 
Mike

:wq

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
