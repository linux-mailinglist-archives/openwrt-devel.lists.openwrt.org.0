Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EB91F2067
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 22:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=k9bbi/I1Ox96vvOZM8EjWMpwSMQj56O+SJDvRMJS/xI=; b=GwtutIMBf7dm01c8jD8Kj4grvi
	fyLqOD2ZmQjLNad+7iS9fGWm8OtZ2JPItcJxAD92X3lRYSNz6j7hegHQ5OANFDSXYJqg9asOUfsLw
	LVD48Pz9RvJUKpHoQIxxYcoMmomiksQn1vdj5INreRbPigtYnop5CGFtRFTFpcAWe0gjw/FbvSkZD
	D0vnPPE3XfPgpes1W3YX7Xd2TdHf/4Dl0Z83cKDq0juf2Bzje954xETrtrIZALoCkbq7MVPpvIm/x
	CpOQjqk8MLGSXH23TVGbuj8XZJ2l+JKR0Lq1utSGqTYnimxUwRZHBcPuRt/xULGhHGbhY79e5ZBfH
	yomkeueQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNy8-0000f5-3j; Mon, 08 Jun 2020 20:02:04 +0000
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jun 2020 22:01:47 +0200
MIME-Version: 1.0
Message-ID: <mailman.21392.1591646520.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Johann Neuhauser via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Johann Neuhauser <johann@it-neuhauser.de>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Johann Neuhauser <johann@it-neuhauser.de>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] hostapd: hostapd_set_psk_file: fix defaut
 value for mac
Content-Type: multipart/mixed; boundary="===============2638467866628507669=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2638467866628507669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2638467866628507669==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from challenger4.mydhp.de ([185.84.81.4])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNy1-0000eP-Do
	for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 20:01:59 +0000
From: Johann Neuhauser <johann@it-neuhauser.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=it-neuhauser.de;
	s=atlas188; t=1591646510;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WCIkXIlenEo9kAPQ5pbxz51JjTqWyaN3YlMwjmIS9Kk=;
	b=BXG7N02lJo1NjYbLAy8Z4ju5J9IeVqPyAY90iGlLe7zIsk0E430/a6a31Ttb6aGcq5YkI2
	7bzFS5d/KDq0eO1guMAEol7HwPdTGauvb73QbMSQcYB2XcCEWQCpfYiTYFnK2zZ3hu+U0a
	TJytGo5fxVDOjPrDqmwk2dfbHxk32w8=
To: openwrt-devel@lists.openwrt.org
Cc: Johann Neuhauser <johann@it-neuhauser.de>
Subject: [PATCH] hostapd: hostapd_set_psk_file: fix defaut value for mac
Date: Mon,  8 Jun 2020 22:01:47 +0200
Message-Id: <20200608200147.7402-1-johann@it-neuhauser.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_130157_669777_CC25B9CA 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Bringing up of station vlan fails if the optional mac entry isn't set.
The default mac "00:00:00:00:00:00", which should match all stations,
is mistakenly set to the non used variable "isolate". This results in
a wrong formatted .psk file which has to be "vlan_id mac key".

fixes: 5aa2ddd0: hostapd: add support for wifi-station and wifi-vlan sections

Signed-off-by: Johann Neuhauser <johann@it-neuhauser.de>
---
 package/network/services/hostapd/files/hostapd.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index c9c0507120..f4e2aa559c 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -283,7 +283,7 @@ hostapd_set_psk_file() {
 	local vlan_id=""
 
 	json_get_vars mac vid key
-	set_default isolate "00:00:00:00:00:00"
+	set_default mac "00:00:00:00:00:00"
 	[ -n "$vid" ] && vlan_id="vlanid=$vid "
 	echo "${vlan_id} ${mac} ${key}" >> /var/run/hostapd-${ifname}.psk
 }
-- 
2.25.1



--===============2638467866628507669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2638467866628507669==--
