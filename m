Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E6811FB45
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 21:59:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WQ/8/O+ghkWoNuXutJa1SXR4100VzFawPGvK1ZQvVz8=; b=pO2aZNet71I+Ut
	iAo9JLcIZRR7FGKjt022wpdtsRSZ/+OErV+H41ohEAo4+ArST9np1P+UHQgC/oUrIok1H+0jd54/b
	i3Qkxg8LxO3ReeyRl73cd7zdmHlsow0Qe81lbmH6zBRf/uCaCDbSQeaQFdXiezjEcvuIs3yMMCiUx
	w12JFsxLEg0PcPa6YtWbHuzNJO1NnDS8f688u648QklcZjTfhBoVfWOXpRKdEZM0cwkF+uyHmiZdC
	D+wAUSr904qDvYBRwj8Q4LZSdzbVLRwL++mEMXRLRkWIIIhLDsdZe3z4W4qRCF/+9ZjAhEscEQFuE
	4OnSYHRS/dve4cXIWqhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igayd-0006BZ-CN; Sun, 15 Dec 2019 20:58:55 +0000
Received: from out-24.smtp.github.com ([192.30.252.207])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igayX-0006BC-KT
 for lede-dev@lists.infradead.org; Sun, 15 Dec 2019 20:58:51 +0000
Date: Sun, 15 Dec 2019 12:58:42 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1576443522;
 bh=shaKqtAQctgZmyWMRTgzERuayjd/BkETDTdIU9XE/lo=;
 h=Date:From:To:Subject:From;
 b=AFBayEGXGBvAhUsR0xogNtVM+YRgc1d/QJzsZP1wR7NXTO/I7P95LslFWv7kcrHv8
 exOguuBhAWy5yi49JjRnrAd1iC133EF05Xbvk7cO5Xz4laESqhSgqU4svEwMZvmWgM
 VreGfoq3kDB4gXOljp6TgpMsu308Ut9JtXeUB650=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/d4b099-6bb22e@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_125849_742202_402A11E7 
X-CRM114-Status: UNSURE (   1.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.207 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 6bb22e: This week's
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
  Commit: 6bb22e3b77caeb9b283610ce8d7b1d42bb4dc1e9
      https://github.com/sdwalker/sdwalker.github.io/commit/6bb22e3b77caeb9b283610ce8d7b1d42bb4dc1e9
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-12-15 (Sun, 15 Dec 2019)

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
