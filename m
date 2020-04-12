Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDF51A5DE2
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Apr 2020 11:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nlr4VlYH71hNf2bHQ3sBk29CRZmNFzUKFZFzqueDmCI=; b=aSUd3uC68BUGms
	5Sp9rYcvwAzpD14xdIk+3xThT3WzeVUOIsb0RsHY6xPPytzMsPVAcufMFWc/TN0LHxAeggN1QvsKS
	goJ/0CnTcu4BliMJup7s33yDu1UpY8l3kWN5CfoLdvoT7Dq2aId7I8Y1xJSD9zW01zWMsB2P+PNSE
	OelfETobSKH20HPEfYevQfTLQw9kXKvj+WOqFOLaHURyiwENIsIOjHk4nGH5qEwS1iCVBvK3sOEbn
	1cxzXGRyI/QrnDsfP8HV4ZU1ayQ4BjD2MkFcJcpeNlDMo2zUc1+vzLLVRwwADLcJWpoQZD3lXDEcl
	j0xUZ0J9GS3l4MJr9VLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNZ6a-00030x-OX; Sun, 12 Apr 2020 09:40:44 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNZ6U-00030L-S5
 for openwrt-devel@lists.openwrt.org; Sun, 12 Apr 2020 09:40:40 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N7Qp1-1jDjSk0BzB-017mxp for <openwrt-devel@lists.openwrt.org>; Sun, 12
 Apr 2020 11:40:31 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 Apr 2020 11:39:42 +0200
Message-Id: <20200412093942.1458-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:+uf4AxzjjE1RFDFsjQxpnlaMnZbh6UjLgSr4EyAR3yCt5j+Vkgs
 UeXLW/0oLsPr8y2lQ08Ih39TJaP2h1p+LJe6SYMcyZ0LaC1Bcmqkowb/av0QcTFqI2JOJUD
 OPny3V74G90TSasmV2v2uu1c4GOvzlmhRyagArrA+bU+RUA1I/H6sOSn4qj70CnFgm2GtFK
 /6tTjikIO/Emq8jWg9AOg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EK4aZa61Aq8=:gSx9ViJdE137Ldqav953cu
 iI/ahkdXgAuBCd2I+kmActPxRAPPsbUXeGnKAF5dX8P8wi1Pj7vMIMsE9O4FzSViz2Gs2xGx3
 x28XhffnNkJ1GMdg8opqOUQJrbayidyK3h0K1e0zUWfLrZqqRhd9XfigOFzkYW6Bp2LHu5lRc
 VnnDkMWq8xUCAQl0vtAtUt75guDplPs6XM6Cn6saYtqgREXFzdxhdbxecA//wmwXbCs0Ljpe2
 Z3FIBMT+jVjF6psvPSDHXxBcg87MB7G/m3C25gaB6fWboQ6MmekHYcWqKD06jkFgrtLvNSB04
 cSr862OJQOzektYO3xz4bugaRRqqZVJcXWdgv9a4AuuyWBOZqT+XFRwFtwATzqHqxBNJ/vFWB
 Ncx9P9/9DhWd/9FCxmInu/ULZxT4J9tVLEoonXtnJqKd3J2frYCwVR1hE/eoGnLYJb5ysHHbv
 0Q3HJ+i8kph/ILfuSi2Ut+rIGPkzHZ6ahRbDFpYfZWF8phQH6gtWd1F1fANoqPgLoEnu04Odw
 qQQwsVD/9svapjbcJIuj1+CGCXwLk+ZKYWzPzScwfUIQMmLP0+L6DviXu9BfJuIpeCzMJX1Gg
 gzRrRMKNZvAIg+1CRx5b06aViuW4G2KCEUAIOFvSmz2xMS1+6UCOQzYZGy4roT3NzjIz/Ymz8
 N/gSRk3UeC8d0f99EEZqCHTf22LqgX1Qp6DWZmtDo8KBMdbeHC4YNTLwUXCFZps5dCbz5FwLs
 OuAzM41mKlv8P5woxJP6HeY/q1msT0QcEq2uvxt9BQBfnxAjzPF7FKk05uxidIEStLCaDBPvd
 v3F92mQvLRzgBMLMXUsweuYTlEQoZWlpGCuOi6Fzxz/YTuvYIaLAuhUdh3OJqhcDuzet5zC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_024039_197379_26511993 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] kernel: replace "+@" dependency by "+"
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

VGhlIGNvbWJpbmF0aW9uICtASVBWNjprbW9kLWlwc2VjNiBpcyBub3QgdmFsaWQsIHRoZSArYTpi
CnN5bnRheCBpbXBsaWVzIHRoZSBALiBGaXggaXQuCgpGaXhlczogMmU2YjZmOWZjYWFlICgia2Vy
bmVsOiBhZGQgQElQdjYgZGVwZW5kZW5jeSB0byBpcHY2IG1vZHVsZXMiKQoKUmVwb3J0ZWQtYnk6
IE9sZMWZaWNoIEplZGxpxI1rYSAoQG9sZGl1bSkKU2lnbmVkLW9mZi1ieTogQWRyaWFuIFNjaG11
dHpsZXIgPGZyZWlmdW5rQGFkcmlhbnNjaG11dHpsZXIuZGU+Ci0tLQogcGFja2FnZS9rZXJuZWwv
bGludXgvbW9kdWxlcy9uZXRzdXBwb3J0Lm1rIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9rZXJuZWwvbGlu
dXgvbW9kdWxlcy9uZXRzdXBwb3J0Lm1rIGIvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9u
ZXRzdXBwb3J0Lm1rCmluZGV4IDc1MjIyODg5YzAuLjVkMjE0NmI5MDggMTAwNjQ0Ci0tLSBhL3Bh
Y2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvbmV0c3VwcG9ydC5taworKysgYi9wYWNrYWdlL2tl
cm5lbC9saW51eC9tb2R1bGVzL25ldHN1cHBvcnQubWsKQEAgLTM5OSw3ICszOTksNyBAQCAkKGV2
YWwgJChjYWxsIEtlcm5lbFBhY2thZ2UsaXA2LXZ0aSkpCiBkZWZpbmUgS2VybmVsUGFja2FnZS94
ZnJtLWludGVyZmFjZQogICBTVUJNRU5VOj0kKE5FVFdPUktfU1VQUE9SVF9NRU5VKQogICBUSVRM
RTo9SVBzZWMgWEZSTSBJbnRlcmZhY2UKLSAgREVQRU5EUzo9K2ttb2QtaXBzZWM0ICtASVBWNjpr
bW9kLWlwc2VjNiBAIUxJTlVYXzRfMTQKKyAgREVQRU5EUzo9K2ttb2QtaXBzZWM0ICtJUFY2Omtt
b2QtaXBzZWM2IEAhTElOVVhfNF8xNAogICBLQ09ORklHOj1DT05GSUdfWEZSTV9JTlRFUkZBQ0UK
ICAgRklMRVM6PSQoTElOVVhfRElSKS9uZXQveGZybS94ZnJtX2ludGVyZmFjZS5rbwogICBBVVRP
TE9BRDo9JChjYWxsIEF1dG9Qcm9iZSx4ZnJtX2ludGVyZmFjZSkKLS0gCjIuMjAuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
