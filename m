Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CBE1A4867
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 18:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RlXUeCamkNNPa9r0Exmal/5Ric4x3/esFuS/F9FCRow=; b=njue3SD0If2cPH
	vqAoUv27YAPIwL8tZGMLdNIxAXPHCJofYmYEW+C25CstkoySaXahoTHIarJp0hC5UuCRPnwwQfIQG
	eillL4XaUVmFmbS/oSpxZm7wYMJAlsGgWaaNLDPY7CP3aPLNcxAykQ1Umve2qUb1nQHgu7WPyAJJF
	81RZqaHhdNzcgMzDxzNcNlTCbw6wrUVAZD2DzUwR5hzzoUZQ98oBLvcSgvNVKxgFqzCgV8T/H458U
	CBYXCsZSYjURFbnPDiFp1zmGmIzv4svuWbAhiIMcZdlvqKkY4em3iKBdwZGaVTMe+f2FNs2md78NM
	bO+R+Wjr8tkJ+8eRGiaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwVT-00040Y-1o; Fri, 10 Apr 2020 16:27:51 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwVK-0003yQ-Qu
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 16:27:44 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net) by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <shep971@centurylink.net>) id 1jMwV8-0003tf-4G
 for openwrt-devel@openwrt.org; Fri, 10 Apr 2020 12:27:30 -0400
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1586536035;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=tc1y6WhkEidOjn6y3WZHSTIl97I=;
 b=IiXbp0AOJJWOgkFnzrUjnpfo3WqIWZPJNgOfUYJeOtvoEsXEQhu7KBA8IRvdvN72
 mrKJ0hzw/wM60A5Wxp70Rmgg279hljIOlRJ2HUPzWabaJ5YrC3yASG3NZkaLiyVg
 yRzoDZqcbkjwI1XzLwiERV3Wg4NrvhlrzAclvutTFoeB796rjG4dmN7qsLtT8w98
 kwb/8vtkvG9EK8rC32l/xq8QRjMKSWpHcDB+d40vARTI9aTbxD/uRNn7NiDatbwF
 I2oIiGOAegkrTHF80c4rVDQvpfL0AOEuNTRxAFzvLs87Nbedphw4aKYF5qC/AxQt
 tW+oq7CiRbwY9mCigE8pew==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=V5cDLtvi c=1 sm=1 tr=0
 a=OSsl9/196MxzRSbOzWpbVA==:117 a=OSsl9/196MxzRSbOzWpbVA==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=cl8xLZFz6L8A:10 a=AsiJWZegAdEA:10
 a=eQrCS-SpgXYA:10 a=ofSJU-CX75T7yrjqH5YA:9 a=QEXdDO2ut3YA:10
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp02.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.3.225] ([71.32.3.225:56212] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=AES256-GCM-SHA384) 
 id 8F/D4-04319-26E909E5; Fri, 10 Apr 2020 12:27:15 -0400
Date: Fri, 10 Apr 2020 09:27:08 -0700
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@openwrt.org
Message-ID: <20200410162455.GA23579@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview: With forum help from @123serge123 the trendnet:internet:green
 gpio was enabled and added to a *dts and 01_leds. It is highly likely that
 this change will work for the D-Link DIR-810L. Both the Trendne [...] 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: centurylink.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shep971[at]centurylink.net)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [206.152.134.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (shep971[at]centurylink.net)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_092743_023556_131C3754 
X-CRM114-Status: UNSURE (  -2.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [ramips]:3 dependent patches for mt7620a_cameo-810
 - howto roll out for testing
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


With forum help from @123serge123 the trendnet:internet:green gpio was
enabled and added to a *dts and 01_leds.  It is highly likely that this
change will work for the D-Link DIR-810L.  Both the Trendnet and the
D-Link use a Cameo based board with the same cpu, spi flash and ram
chips.  They have Identical LED's.  The led change does away with the
need for an LAN4 NIC, mimics OEM and is configurable.

I could roll out a cameo-810.dtsi patch, with led fix, followed by
adding Trendnet support but this bypasses DIR-810 testing prior to
committing.  If DIR-810 testers reject the led change, I would, barring
any major issues, keep it for the Trendnet which would modify the
dts/dtsi changes.

Alternatively, a patch for the DIR-810L/led for testing.  If tests OK,
cameo-810.dtsi, followed by adding Trendnet support.  Alternatively
could combine the dtsi patch with adding Trendnet support.  

Preference?
-- 
J. Scott Heppler

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
