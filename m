Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F84410E340
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Dec 2019 19:49:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6Vn91i/KhVGm0APv9OQsGY5EiFhntxEUQmG+2uJMBZE=; b=uEVe8cVnXiRvuh
	AILAPpFt0HgpwUANrza3LRrh2S3iJ82mNclqb7eP4WZNZkVKCq2hErrg3isyEzMrGEO0ML3POJWW+
	hzWomFRXvppdC41793Mh40J0oDjGeL7La7/cOyD8FlR01paLrYVmIfmhjH+C0xdiUJsK5c+l4Hvix
	TEaecoHHbRty4QH3jQGk8zFL1EMGy/tGBKn7Sp/G4PSLUhlG5mipqoyu0U745DVH51VRtWHMADehW
	Bg+NOPnstCsTQ9+Cwro3CcxYNcovQ+Ywav4LURT2yYCTHB2n7EBNeqctJFDhw7ewKkbww1tDE17zr
	0Mzi/k9GAcW5UH8J2rIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibUI1-0004nl-IH; Sun, 01 Dec 2019 18:49:49 +0000
Received: from out-19.smtp.github.com ([192.30.252.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibUHu-0004nF-Vs
 for lede-dev@lists.infradead.org; Sun, 01 Dec 2019 18:49:44 +0000
Received: from github-lowworker-943b171.ac4-iad.github.net
 (github-lowworker-943b171.ac4-iad.github.net [10.52.22.59])
 by smtp.github.com (Postfix) with ESMTP id 89846520073;
 Sun,  1 Dec 2019 10:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1575226179;
 bh=gyjYW18xUS1PLia99D1LojqOlL9Yi7h/frGu/LnAcq4=;
 h=Date:From:To:Subject:From;
 b=LuXBnbrlJc2v6aMspRucGPN2P/M5GE5VGzHAZewOxX3r2FMoWn0wsfVREcMocnuZQ
 twjjBA+mteX2phiasepHETD8Y1vN9KxwfvaulSBB1XyMNpkF6YWdO2D6Z3RC+gO+8T
 ih5WXTMByoJOKL5vEY8U0Yhho0tC+ZBOBTIn3y6U=
Date: Sun, 01 Dec 2019 10:49:39 -0800
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/8d0624-83c714@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_104943_095169_E4757CFA 
X-CRM114-Status: UNSURE (   2.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.202 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 83c714: This week's
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
  Commit: 83c714fdf2ed7ade8b565e526c47bb89fdbd051b
      https://github.com/sdwalker/sdwalker.github.io/commit/83c714fdf2ed7ade8b565e526c47bb89fdbd051b
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-12-01 (Sun, 01 Dec 2019)

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
