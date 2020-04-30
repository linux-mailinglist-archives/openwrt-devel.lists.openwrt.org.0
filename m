Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1331C0679
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Apr 2020 21:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WI0UtpR2gfLddhUA4JXO/cgjvwllTBiUqmiBhYU4l5s=; b=IyOBLMFbHmUA+n
	ZaqdEEHSikKx0vwQtTkvFffa07e4cY+1vEDH5sKjKbyWMd40pfBJc8ynhG/5eJh9G3LyapMxg1zeW
	4Hz2+pN71SAdqsIWer9FKPThGU1dlK8v2mNbCFxaERu7d6wd6tIt2sYeqmrHeITKnU0L1zTElUhXj
	iY4Iu5NWORM4VbtpzY6vpNpmZx0uuWBTALthDILVYwzuCk6Nn4DPjCf+jpZ6zN9yEMvcpUY05oyWC
	fefpWD9aHNvbjHRhboY+VoCwJaV/ElxtCI4oAyq4qX8pJgQBBhtfGYpa/clHswPY5LmpvhtIgpuEp
	SxuH7eZJCOcJTRHPzGNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUEvN-0006Ua-E3; Thu, 30 Apr 2020 19:32:45 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUEvB-0006KN-T5
 for openwrt-devel@lists.openwrt.org; Thu, 30 Apr 2020 19:32:35 +0000
Received: from macmini.redfish-solutions.com ([192.168.1.38])
 (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03UJKSfM015206
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 Apr 2020 13:20:29 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <04320ECA-7526-4925-AB0A-A4211FE95852@redfish-solutions.com>
Date: Thu, 30 Apr 2020 13:20:28 -0600
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_123234_010829_3AE47DCB 
X-CRM114-Status: UNSURE (   4.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Routes disappearing when ip "ip link set down ethX"
 and bring it up again
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

SGkgYWxsLAoKSSBub3RpY2VkIHRoYXQgaWYgZXRoNSBpcyBteSDigJx3YW7igJ0gaW50ZXJmYWNl
IGFuZCBJIGRvOgoKIyBpcCBsaW5rIHNldCBkb3duIGRldiBldGg1CgptYWtlIHNvbWUgZmlyZXdh
bGwgY2hhbmdlcywgdGhlbiBkbzoKCiMgaXAgbGluayBzZXQgdXAgZGV2IGV0aDUKCnRoZW4gbXkg
cm91dGVzIGRvbuKAmXQgZ2V0IHJlcG9wdWxhdGVkLgoKSSB0aG91Z2h0IHRoYXQgcHJvY2QgaW5z
dGFsbGVkIHRyaWdnZXJzIHNvIHRoYXQgaWYgYW4gaW50ZXJmYWNlIGZsYXBzLCB0aGVuIGEgaGVs
cGVyIHdvdWxkIHJ1biAoaW4gdGhpcyBjYXNlIHRoZSBuZXR3b3JrIGhlbHBlcikuCgpJcyB0aGlz
IG5vdCBoYXBwZW5pbmc/CgpUaGFua3MsCgotUGhpbGlwCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
