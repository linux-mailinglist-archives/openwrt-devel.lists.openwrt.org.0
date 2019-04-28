Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1501B64B
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Apr 2019 19:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/2OclJrFQ5gj6RgB5R0VfqZX7fY4wby1KRf1IPbawAk=; b=QPe8Ec6Z7ukrwf
	mRwQ5ROSlz1gBPXeQjCgfcsOE5zaU9obCXxzDY/jkbiiOX70Dp6jhcQcik9wo8LX+i1VjgECSuLon
	fF3QT2y8lc97EpMI/jmbtWwik55+0dF0d3otYdFDpTN5YRrcG831MCic5+ERZlvfd87IHdjAQ0z+D
	86LpvIEKd+g7OpZ4OI81bLvhB6kqtR71QCp7CQz3al7VYlrbGbk5I37OCgV9v2Q7rnK1B2JK4jltz
	v6bZV6NdsCtxmrMKfTDa9lzMshyOIKmgtzgPrOF6jzQPbHT74NZqQyK1cnt/buGEikAZcOrPAmcML
	jmY6jclJyQCkulW00Bhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKnyU-0007qv-SU; Sun, 28 Apr 2019 17:52:26 +0000
Received: from out-1.smtp.github.com ([192.30.252.192])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKnyO-0007qb-W9
 for lede-dev@lists.infradead.org; Sun, 28 Apr 2019 17:52:22 +0000
Date: Sun, 28 Apr 2019 10:52:18 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1556473938;
 bh=5cQDXCqGMrg8e+Guod7/4uTAXiy1bvts7DL4qEg6KXo=;
 h=Date:From:To:Subject:From;
 b=IecBpFbEg9H3ohOdxs/mKqcdLK3U6KQfiMlw5xaO1lLZiHLbhtqZqhfhbum22Azm3
 gMu1NNoa5ulFNGJ1NPHztY7OrB5IV+MfuBzbLQMIgTsFKguN3NZs5JmzVRWkN20Deh
 DLUXm0WhFrvSbwDjDogNzo+n7jraemLHRL3OZ+Dg=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/11f6aa-56e97d@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_105221_098487_6DAB7D23 
X-CRM114-Status: UNSURE (   2.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.192 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 56e97d: This week's
 update
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
  Commit: 56e97d18b446164dc52f8e119ed65780ad1a1e2f
      https://github.com/sdwalker/sdwalker.github.io/commit/56e97d18b446164dc52f8e119ed65780ad1a1e2f
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-04-28 (Sun, 28 Apr 2019)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
