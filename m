Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3611B9496
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 01:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fYKnAWjVLBnZgynjTLOzqN8+a88Qziku/vFp+6P7yak=; b=VBGDORGoG2P5dj
	HMmumFm5fmLgrMpgJWFJVcCjZtgIDeEUIOpADWNy25IM6B8r2K5JJV4T9+wOZhkBVU7yMadmPWtOO
	76CUKPMXIJmakCCzUyGR34uZXPul97PW7r5SLse/TZuVl1Xl//n2wewIcTe6Pvb3FxfOKZYMrO6bi
	aixsrEt+/zV3qkksXyjfP2S1ZSi0ij9Xcd3zvJFZZZYeEuzH147DqNZ5xKKFbaEF+YFublmpvGxMm
	4WdGIWHc2KlcfguTjVRCF3eBDDt5HHhJtZI0aslv/hCdVGAEWcA/3u55wXCW7MUaH/1+nplEiy9CB
	INeWu6IHDeddqoqMTBdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSqT7-0007Fr-9W; Sun, 26 Apr 2020 23:13:49 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSqT0-0007E2-T9
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 23:13:44 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03QNDVJZ022082
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Apr 2020 17:13:31 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <F2577D6E-9548-4D93-9F2B-0BF17644A4A7@redfish-solutions.com>
Date: Sun, 26 Apr 2020 17:13:31 -0600
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_161343_871025_07A6DB35 
X-CRM114-Status: UNSURE (   4.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Firewall rule for UDP-based Traceroute
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSB3YXMgcGxheWluZyB3aXRoIHRyYWNlcm91dGUgY2xhc3NpYyBhbmQgT3BlbndydCB1c2luZyB0
aGUgZm9sbG93aW5nIHJ1bGU6Cgpjb25maWcgcnVsZQogICAgICAgIG9wdGlvbiBuYW1lICAgICAg
ICAgICAgIEFsbG93LVVEUC1UcmFjZXJvdXRlCiAgICAgICAgb3B0aW9uIHNyYyAgICAgICAgICAg
ICAgd2FuCiAgICAgICAgb3B0aW9uIGRlc3RfcG9ydCAgICAgICAgMzM0MzQ6MzM2ODkKICAgICAg
ICBvcHRpb24gcHJvdG8gICAgICAgICAgICB1ZHAKCW9wdGlvbiBmYW1pbHkJCWlwdjQKICAgICAg
ICBvcHRpb24gdGFyZ2V0ICAgICAgICAgICBSRUpFQ1QKCmFuZCBpdCB3b3JrcywgYnV0IGNhbiBh
bnlvbmUgc2VlIGEgZG93bnNpZGUgdG8gaXQ/ICBZZXMsIGl0IGV4cG9zZXMgdGhlIHByZXNlbmNl
IG9mIHRoZSBGaXJld2FsbC4KCkJ1dCBpcyB0aGVyZSBhbnkgb3RoZXIgcmlzayB0byB0aGUgZmly
ZXdhbGwgYmVzaWRlcyB0aGF0PyAgU2hvdWxkIHdlIGluY2x1ZGUgdGhpcyBydWxlLCBldmVuIGlm
IGl04oCZcyBub3QgZW5hYmxlZCwgaW4gdGhlIGRlZmF1bHQgL2V0Yy9jb25maWcvZmlyZXdhbGw/
CgotUGhpbGlwCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
