Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21507141FC6
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 20:23:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kkI7nnyCAe2/aVPA8fEya31K8XxJhFZk11yBBX8C2EY=; b=tLvl1X9+0HOpl8
	WUPreSHLMT2Sfu9YwOXl4CgaKVDGJujjASd8DLdD2iMbmKSK1+/o9Mb7CIPRvmKnGqHL1b7wVrY1O
	CCZe6VK8jVF3PoM46+4lq45of5IhM+1+LZu7LlypPr/W86SRJnOX27Uu3csJw4vtO7twIfN7XHdN3
	J8kkuQhp4MVuNOAnkDtsjaD51XYVfoELVCmavwznLI4XOLnYD4rix+CAmfCDJ2abMN+lqkJW8OZ99
	sGOWxPVDqRp2B4vVXtK2Q8I8H8BQ1Hh50UtvZLB88Q3kuNWsvphFcU40ECHii+fSRx77T7LV2T1ri
	xkraSixGZ6g15mBpRxYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itGAc-0001Bt-Gd; Sun, 19 Jan 2020 19:23:38 +0000
Received: from o11.sgmail.github.com ([167.89.101.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itGAT-0001Ag-QJ
 for lede-dev@lists.infradead.org; Sun, 19 Jan 2020 19:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com; 
 h=from:to:subject:mime-version:content-type:content-transfer-encoding; 
 s=s20150108; bh=EJ9d2JIngTZTTeh81WHuIWnndx7vIx6fa+oSQzejjgc=; b=
 srM4278c4FwRfPGzF2/iYlqCj4V59cGElM1QwVl0dHijmPYowJ96hczzF2ydT0aM
 l5KdmKIsV04niM/BpJutCUN9OQrG6s8nk+K364S06a3kgOL1rXyh3eAAKhtBvsPy
 ld3LVLCrTIMWCa3TeVmNbJFQdH1Z752df39xpECjBLI=
Received: by filter0556p1iad2.sendgrid.net with SMTP id
 filter0556p1iad2-29290-5E24ACAD-1E
 2020-01-19 19:23:25.568100903 +0000 UTC m=+423291.950250022
Received: from out-28.smtp.github.com (out-28.smtp.github.com [192.30.252.211])
 by ismtpd0053p1iad1.sendgrid.net (SG) with ESMTP id s-4q_D1tSYuSsY_apu2SMw
 for <lede-dev@lists.infradead.org>; Sun, 19 Jan 2020 19:23:25.486 +0000 (UTC)
Date: Sun, 19 Jan 2020 19:23:25 +0000 (UTC)
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/38772e-fd5324@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-SG-EID: AaZRcYDd1kbUYxcdbhY+GJT9jhw7cfeYxJFlayk/Y2S9d3JFUMFzxoask9sAt8vWoYv6zjQwDzoGRc
 B3Pdo5+jZUkPeJXp5OSOVah46iqNlmbf4Kkh8Uix1kRQnHhUMVZW0wuMptDUWUBfRTdFmRVXXkEv9v
 iaolXNnefg/qTd2gxgm3Mq8j0n2MTRhBFeZj8e9ja4E7HDUPqeBaZfnRgftWgHQ4DHiLY9lsqRN4Fy
 g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_112330_331208_E4CEB227 
X-CRM114-Status: UNSURE (   3.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [167.89.101.202 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [167.89.101.202 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] fd5324: This week's
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
  Commit: fd53248502402336fc70a64c2c959392436292c4
      https://github.com/sdwalker/sdwalker.github.io/commit/fd53248502402336fc70a64c2c959392436292c4
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-01-19 (Sun, 19 Jan 2020)

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
