Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F539156BD0
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Feb 2020 18:26:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nbAfpwHLlNN7SIP9ixPiQHEMDnpECyQuuEmsIdAKVrA=; b=gtqoRrAAAMU1QE
	ViG2K2sdrRLx1kj4n8KazvqFIgzsImVzFurVi+mAOa/o8d7GQWcJOukmLD43awBPp4XnYxqx3rC4B
	JNVmROM+qSpM7ilHKPZkeY+tPuiBEzfLgm2VywOdmn+HSY3iTTd/EZZ7PXTm/GS8Pas7ctkRCq+Gw
	LidPm1e7UDdyaTOZSO9bc/pwnupKdEOBPoKPOW3/qVpFMaKT29OmEkFrielF3yKs1gK87DA2rICV0
	Gw6wuE4NcCoxxTd0tO/PGKT56+d4LWWuU9m4172p2B/cdcN54vYV6/o/s+7rG4/S1xSPYRfO3Ow2y
	pWf2s/NU05J2MPJ/db4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0qLJ-0003Yz-ME; Sun, 09 Feb 2020 17:26:01 +0000
Received: from o6.sgmail.github.com ([192.254.113.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0qLC-0003Ya-2u
 for lede-dev@lists.infradead.org; Sun, 09 Feb 2020 17:25:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com; 
 h=from:to:subject:mime-version:content-type:content-transfer-encoding; 
 s=s20150108; bh=2hzN3d7kiSxvaCsfFGEAb+fCCqaUJJwKHTQ5rsUx5T0=; b=
 iYDQQPBO/lA2eWAg/sUow7vTdEepZCLaarM8cXHPWTm1KxOREtuoqm1Qe6YzR5li
 SpVgfZv87Bxzuu5g7Obv4aiRa8ruC5aar2pWUTItyGiE7DGYn6Y9y5ob9wgiwBQD
 3w5TmdpRYd6ZkLH3S7wXW39fNKJYc2AUNr25i0t8OqU=
Received: by filter1643p1mdw1.sendgrid.net with SMTP id
 filter1643p1mdw1-3216-5E4040A0-A
 2020-02-09 17:25:52.269843735 +0000 UTC m=+244244.689303438
Received: from out-23.smtp.github.com (out-23.smtp.github.com [192.30.252.206])
 by ismtpd0040p1iad2.sendgrid.net (SG) with ESMTP id OH9_sp-lTnWIUI2KXfMzfg
 for <lede-dev@lists.infradead.org>; Sun, 09 Feb 2020 17:25:52.206 +0000 (UTC)
Received: from github-lowworker-ca5950c.va3-iad.github.net
 (github-lowworker-ca5950c.va3-iad.github.net [10.48.17.57])
 by smtp.github.com (Postfix) with ESMTP id CAD8B6601AB;
 Sun,  9 Feb 2020 09:25:47 -0800 (PST)
Date: Sun, 09 Feb 2020 17:25:52 +0000 (UTC)
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/70670f-965f57@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-SG-EID: AaZRcYDd1kbUYxcdbhY+GJT9jhw7cfeYxJFlayk/Y2Q8YAyp6MNAeUctnio23H7pdtHBUk6QpjyfYK
 U5Q8cvZiG9kxslnwblz7wtdZw7xMyZIYfA5R04RiglBZcZRMtTrXuW6lFLQEpXd9K9VEF9SRwDByVq
 y4gVFlsyGGpMDWpRaBXT3VMCcdI96n1hQK1C+e/w27pgx0Fg4pnaFt8Ema4bjSRGL1SOAPTmV0Zejk
 U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_092554_272139_ED1EAFF2 
X-CRM114-Status: UNSURE (   3.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.254.113.101 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.254.113.101 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 965f57: This week's
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
  Commit: 965f5788351dc73a3fda3da3d22bc6012e843a8e
      https://github.com/sdwalker/sdwalker.github.io/commit/965f5788351dc73a3fda3da3d22bc6012e843a8e
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-02-09 (Sun, 09 Feb 2020)

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
