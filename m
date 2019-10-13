Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B209D581F
	for <lists+openwrt-devel@lfdr.de>; Sun, 13 Oct 2019 22:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vKlT8w+s3ZAKJkW3XBoKPK1q0ePhG+qxLMqLXHcNjEk=; b=KsMuvtTslUMkvW
	DBFPkLQnH594f35M1ioRNRoj4a203r8LORRVaM05gSZSIeMNHIqlkgRle+/Irs6uQ0fIRTte3x2pa
	S24hnEl1j1PsDzekXIkxBgZYpZZvbhCliW6Avmxu1gub0bfumKLrBmsziLKbtLzHccs2Xb5kdsQe2
	uZiwHH/1wQ3W4iQnQmw0s3eFPNTVhcpEWfWtOXcS3BCjNEpUVkPei1cWlu1MWSrAfdnK5gOhw1OCf
	y8Y4ueP5HTKHDBhK1JNtNU4k0xnvRon7de+SY2RAzes/6yE0JYw202Vq9Zb93SRQMKsHpytyR37bn
	dUcKHHAuIe0ppjpO7N8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJkdP-0007XS-54; Sun, 13 Oct 2019 20:38:35 +0000
Received: from out-4.smtp.github.com ([192.30.252.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJkdG-0007Wy-3Q
 for lede-dev@lists.infradead.org; Sun, 13 Oct 2019 20:38:27 +0000
Date: Sun, 13 Oct 2019 13:38:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1570999102;
 bh=nLDZt89PXN1j9iY1+2y7P6PQYP+0r9LlIsFd/Yj+izI=;
 h=Date:From:To:Subject:From;
 b=WvhZZcDNmmbzcMAuUny0xMST9zkqoA8XONhjmwiDQGU3HSDAvd+1B4aoFGgzLLlQm
 kNChfFiTOdao6RXDxj/u4UYdwI3y9IGOYHkn3V+QUH8t9EmpnAI2XI8Ggg9OwfJRy0
 ofuV1VmAGmD4dFYHL2K8gS6oQGR7zsWddgj6WGX8=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/c6df41-c460d8@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_133826_209126_AA628E6B 
X-CRM114-Status: UNSURE (   2.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.195 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] c460d8: This week's
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
  Commit: c460d860b38c32bf3d41e680d97ce814fcbc34ef
      https://github.com/sdwalker/sdwalker.github.io/commit/c460d860b38c32bf3d41e680d97ce814fcbc34ef
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-10-13 (Sun, 13 Oct 2019)

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
