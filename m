Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EA8F6A9D
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 Nov 2019 18:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I2qB2jDYhGxqFjMuC4yigcC6qRi7S5VN98ReGEaL8LU=; b=MW4cemsL53wpyR
	TjulR4b/sG+av4zHgZpoDm9NdWBjgaOLhEEZqi9gb6C6X7JdHW4jttzyCzW9wQRtCUU37OptQ3dcu
	SzOOJlame/fxayYjJi8XrXLy/yy45E9Tb8vhKRgTWwJmgge1ec+0jzT71uSj+br6xIE9tHasUn1yx
	djttWj6oU7A8DJjVfLY3Lwb7FieNRKFYAFJMF4y6Hifp7oLnSsGaC/ijOkKyDNnOsNRtE+YDbQcS6
	NRpJ+2G6yPGm35w8x68GutucS/zsFFhMu/R5z6pLii3sNf85yFz9N5c83xXRFI4Pq0A7bLhqRXM6y
	ER1lMKI03uQnSNnJFQXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTrJh-000097-4T; Sun, 10 Nov 2019 17:48:01 +0000
Received: from out-11.smtp.github.com ([192.30.254.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTrJa-00008o-FD
 for lede-dev@lists.infradead.org; Sun, 10 Nov 2019 17:47:55 +0000
Date: Sun, 10 Nov 2019 09:47:51 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1573408072;
 bh=RF5UudwGq4bknkqOdZ7E5RxIhnF924f3zVBlEWLVarI=;
 h=Date:From:To:Subject:From;
 b=bM1IRP27jZgwpn3odb2sR/qadltRnJwe8JqtBQ4iFYcBnVYNWjHuszz+Q55bh4yg/
 8NBZ8hUu2CJDmgvl1673QievA7Lk+HyHyU/fp+m+1KaleghFouh0RGrqGHdcZ0kyE1
 xh1dDg37drg26C2FnzP+Yf86ND5xnTgZFwzG1Cn4=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/edbcf0-13178b@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_094754_530868_EBE8AC7A 
X-CRM114-Status: UNSURE (   2.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.254.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 13178b: This week's
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
  Commit: 13178b02b525ba4b46a6d36fa67e438ba45a9070
      https://github.com/sdwalker/sdwalker.github.io/commit/13178b02b525ba4b46a6d36fa67e438ba45a9070
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-11-10 (Sun, 10 Nov 2019)

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
