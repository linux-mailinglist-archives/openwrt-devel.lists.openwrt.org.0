Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 657851AD7F
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 19:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=opcNzI25h3Zp3dC4RfGQIl/Y70WYbvHW4dhS5S/LvkA=; b=XgA02KcGnjiXlo
	tbkLUhlwbukxc2gGbLe2S1K5wfADJy39o4YQ47WDSamPTRrfALZKA6LZuFCxNt6L4TGwsAldD7sxO
	9vegu4QDxNIt1f+PtB1nrAmmenJ9ZYzyLHGl1vE4l9GiFReKfblVFSPJ5rYkH0wCCnEVv79HL4CBz
	VQdfHANDuMd1scRF0OQC6kSqL2Uiz0ncQArOdgT1qZKovkOUOOqso/ZnMr25uBzsGDAQhaPCF4AHz
	iiVUXMoeHKlDB+M66fVLLY+008HFcnIEyIMM0nxgOsWGmihMtBfIyiIQYvZHh6/sLPPlHbM8Nkm9P
	Nvfhw2RmBAe63dS4y3pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsEE-0007vW-6S; Sun, 12 May 2019 17:25:38 +0000
Received: from o5.sgmail.github.com ([192.254.113.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsE7-0007vB-Dx
 for lede-dev@lists.infradead.org; Sun, 12 May 2019 17:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=github.com; 
 h=from:to:subject:mime-version:content-type:content-transfer-encoding; 
 s=s20150108; bh=pUiylldGXIvSRmimOC29dOk3cPs=; b=E8cP59NCruO5Qhdp
 m8AiUtnvNSZldzEKLrzI63OD5hWhEK5KhUJyHkQjeLLA4XMWeF7e8thisPEeA0eS
 wl7ZLA6t6XHedSVCWfrKwjz94z9UeZ6vQeSKhmtbRYQ61F0h4hqqW/T54HzpclIp
 LT9NILTmNTT8X6gwkSECrkEuWJ4=
Received: by filter0966p1las1.sendgrid.net with SMTP id
 filter0966p1las1-4910-5CD85706-26
 2019-05-12 17:25:26.560819874 +0000 UTC m=+329186.069395943
Received: from out-21.smtp.github.com (out-21.smtp.github.com [192.30.252.204])
 by ismtpd0025p1mdw1.sendgrid.net (SG) with ESMTP id 6bxo1EbnSPKic3aEdSOPhw
 for <lede-dev@lists.infradead.org>; Sun, 12 May 2019 17:25:26.445 +0000 (UTC)
Date: Sun, 12 May 2019 17:25:26 +0000 (UTC)
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/0bc963-bdf1b5@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-SG-EID: AaZRcYDd1kbUYxcdbhY+GJT9jhw7cfeYxJFlayk/Y2RtGCGcAoDleAUL9Rpt5rcVKEkzmwBWK2YCpC
 vkCIaenNFH8vdHyJtnlZ4razBOxVKqhDtG+ufPJVC3NpZ/Fy15GZ6Q7EKVy32rDM2mkTAcWGubz6Ht
 hh5ZS711nrzPxkrLYyaowH70TL8qZq3hxVGXZZ3nKDY8DJa8sLq1p7fGRaTeiCY5wv8Vj8PVJ0AtYb
 U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_102531_621748_FD1FE1F0 
X-CRM114-Status: UNSURE (   3.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.254.113.10 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] bdf1b5: This week's
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
  Commit: bdf1b5711c2bcab077231421d04a501a3bd992d0
      https://github.com/sdwalker/sdwalker.github.io/commit/bdf1b5711c2bcab077231421d04a501a3bd992d0
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-05-12 (Sun, 12 May 2019)

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
