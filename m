Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5793E16077D
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Feb 2020 01:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EbFplrwAj04kOdHBjD7YRm/1nCsEAjSavmZGf3G07TY=; b=Qan+tAD0cpt/2Z
	XDhARTXOTXR1IDeLrn+culmpgpCB+TAKFqbHO642VSH7Ent6LyKwuUhjZazR1NmkA9Wf2GsyTU6ap
	jwRcYHgrck9TrrVSLcslibGzWLEcwyyrrzOOK6aODj1NS4/0jx1Rnm3HiA/0LzKW/S6ltk1/IlNC5
	ni0HTFkyHJbcKEbNiIHm6UkWsTxpB7tFQXCOFe7cb8pxpy2l4+/3f/nv/WzH6R4EWFQmmp6KwRL4h
	GueRnJ3kHetPfay+/FMbXwGb1iH+79a/rWF/Sg5sI3JrCTWKxwSoZhmZY19g3sGkGMiCa++CNGl/2
	HwSwLRn9G3vaA60eB3gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3UGp-000873-R4; Mon, 17 Feb 2020 00:28:19 +0000
Received: from out-4.smtp.github.com ([192.30.252.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3UGj-00086b-La
 for lede-dev@lists.infradead.org; Mon, 17 Feb 2020 00:28:15 +0000
Date: Sun, 16 Feb 2020 16:28:04 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1581899285;
 bh=HHLkjzpMxIrK3bZ+qEAHRKbDHl2kpYvmkTZX3ObX/mo=;
 h=Date:From:To:Subject:From;
 b=Qvr5Z4IAxwnKntyfDDZtsdXaY1lr7s8fyFSGmSvlDZiaStCcjS+CyZv60XVJlqGrX
 Tyj1BXoXSnZlcUPGsM2+YPR+XAPYkk/ngNKMT5H4rEtSQpQiA12IJyK9KX9U9Zsau6
 dI0+ZfsRfgKuPmG9LF2CzdRu/OWbzIa5JqWvIMDg=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/965f57-a4a666@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_162813_783073_5D482240 
X-CRM114-Status: UNSURE (   2.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] a4a666: This week's
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
  Commit: a4a666fc868d2f42dec2c1986d08f6b10333cbb7
      https://github.com/sdwalker/sdwalker.github.io/commit/a4a666fc868d2f42dec2c1986d08f6b10333cbb7
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-02-16 (Sun, 16 Feb 2020)

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
