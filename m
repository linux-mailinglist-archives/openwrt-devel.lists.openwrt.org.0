Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25732E503
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 May 2019 21:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00orC452bWCpjQpo+OlpUrR1d1PmV5E3uk8Vxodr2dM=; b=jqT2jqLBgqbBDO
	lWRMhaoXM1onAhdfQ11kVhLRg3pkxc23Pue0KBlUE/6lsfmpf4Ms9NKGNSnlr0/rI/+dKO6K+BSNE
	eHI9A4LWOUzLik619PTgJBDAZqelxlCCp+Unn8iDzmMZZ8/04pMaD4NsQbckfBw1P9jzrfNtVa0ZF
	guBeZxs+OEZZdIH8A4NgJE59ydRNUGoJ/9AURXRhEd0VKkeS8FyYVFhG2+6viv5bhYxgDNgyq2NSX
	4HIilah9Qi6wKFDoIucjELOkxF2Wf/VzrULTOJuZgkoRQiASMQ6/4/l8WqD2enCaBwcfLHCQrrodm
	UqHklSg6btIS2W9yB6tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3vu-0002Wr-73; Wed, 29 May 2019 19:08:18 +0000
Received: from mail.sgstbr.de ([2a01:4f8:160:14d5:e20b::21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3vn-0002W0-FY
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 19:08:13 +0000
Received: from fbl-desktop.lan (unknown
 [IPv6:2a02:810d:98c0:4a00:6791:2d02:f640:b309])
 (Authenticated sender: fabian@blaese.de)
 by mail.sgstbr.de (Postfix) with ESMTPSA id D33002C5716;
 Wed, 29 May 2019 21:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blaese.de; s=201803;
 t=1559156886; bh=mfF5H4/bMdVbotXOIFHsxcJDjN++IstH4wLM0VsdGa4=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=sXGg4SzmuCqxeswem1MYEVXR2fjVYXPvMgitDgz1ffSABOg9iFRPP3qC0kDfeBx0d
 d2tWOBtBhr0kAVvPi/nLM/B7HYrrs7KvaQc++VZaMWXjUvoT7hRat4fcNupe6/3rh/
 fZzxrVoJ+LABgwrowrXt64XImo6X8lVzaqIPrWITg48JtMUS8ar2X1iDKkf3eAXR6z
 4iwxJmgPeUGtC88C0IouCpyJHYaWqy3Dj2SJ/2bK8bQgM1KhlzOQrzrrbLZNb6zYOn
 itAh7g5RcD8dYMC4itgiirB7xBfFQIkuc3WTPCw1Eoqa76AgSbd1vVkknJvgmF1cXs
 9WT/JmJGsObSg==
From: =?UTF-8?q?Fabian=20Bl=C3=A4se?= <fabian@blaese.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 May 2019 21:08:01 +0200
Message-Id: <20190529190801.14489-1-fabian@blaese.de>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
References: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_120812_112825_C0C8FDE2 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] gre: introduce 'nohostroute' option
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
Cc: =?UTF-8?q?Fabian=20Bl=C3=A4se?= <fabian@blaese.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SXQgaXMgbm90IGFsd2F5cyBuZWNlc3NhcnkgdG8gYWRkIGEgaG9zdCByb3V0ZSBmb3IgdGhlIGdy
ZSBwZWVyIGFkZHJlc3MuCgpUaGlzIGludHJvZHVjZXMgYSBuZXcgY29uZmlnIG9wdGlvbiAnbm9o
b3N0cm91dGUnIChzaW1pbGFyIHRvIHRoZQpvcHRpb24gaW50cm9kdWNlZCBmb3Igd2lyZWd1YXJk
IGluIGQ4ZTJlMTkpIHRvIGFsbG93IHRvIGRpc2FibGUKdGhlIGNyZWF0aW9uIG9mIHRob3NlIHJv
dXRlcyBleHBsaWNpdGVseS4KClNpZ25lZC1vZmYtYnk6IEZhYmlhbiBCbMOkc2UgPGZhYmlhbkBi
bGFlc2UuZGU+Ci0tLQogcGFja2FnZS9uZXR3b3JrL2NvbmZpZy9ncmUvZmlsZXMvZ3JlLnNoIHwg
MTQgKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2UvbmV0d29yay9jb25maWcvZ3JlL2ZpbGVz
L2dyZS5zaCBiL3BhY2thZ2UvbmV0d29yay9jb25maWcvZ3JlL2ZpbGVzL2dyZS5zaAppbmRleCAy
YmIxMDEwYjc2Li4zNDE0ZWQzMDQ3IDEwMDc1NQotLS0gYS9wYWNrYWdlL25ldHdvcmsvY29uZmln
L2dyZS9maWxlcy9ncmUuc2gKKysrIGIvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy9ncmUvZmlsZXMv
Z3JlLnNoCkBAIC01Niw3ICs1Niw3IEBAIGdyZV9zZXR1cCgpIHsKIAlsb2NhbCByZW1vdGVpcAog
CiAJbG9jYWwgaXBhZGRyIHBlZXJhZGRyCi0JanNvbl9nZXRfdmFycyBkZiBpcGFkZHIgcGVlcmFk
ZHIgdHVubGluaworCWpzb25fZ2V0X3ZhcnMgZGYgaXBhZGRyIHBlZXJhZGRyIHR1bmxpbmsgbm9o
b3N0cm91dGUKIAogCVsgLXogIiRwZWVyYWRkciIgXSAmJiB7CiAJCXByb3RvX25vdGlmeV9lcnJv
ciAiJGNmZyIgIk1JU1NJTkdfUEVFUl9BRERSRVNTIgpAQCAtNzYsNyArNzYsOSBAQCBncmVfc2V0
dXAoKSB7CiAJCWJyZWFrCiAJZG9uZQogCi0JKCBwcm90b19hZGRfaG9zdF9kZXBlbmRlbmN5ICIk
Y2ZnIiAiJHBlZXJhZGRyIiAiJHR1bmxpbmsiICkKKwlpZiBbICIke25vaG9zdHJvdXRlfSIgIT0g
IjEiIF07IHRoZW4KKwkJKCBwcm90b19hZGRfaG9zdF9kZXBlbmRlbmN5ICIkY2ZnIiAiJHBlZXJh
ZGRyIiAiJHR1bmxpbmsiICkKKwlmaQogCiAJWyAteiAiJGlwYWRkciIgXSAmJiB7CiAJCWxvY2Fs
IHdhbmlmPSIkdHVubGluayIKQEAgLTEzMyw3ICsxMzUsNyBAQCBncmV2Nl9zZXR1cCgpIHsKIAls
b2NhbCByZW1vdGVpcDYKIAogCWxvY2FsIGlwNmFkZHIgcGVlcjZhZGRyIHdlYWtpZgotCWpzb25f
Z2V0X3ZhcnMgaXA2YWRkciBwZWVyNmFkZHIgdHVubGluayB3ZWFraWYgZW5jYXBsaW1pdAorCWpz
b25fZ2V0X3ZhcnMgaXA2YWRkciBwZWVyNmFkZHIgdHVubGluayB3ZWFraWYgZW5jYXBsaW1pdCBu
b2hvc3Ryb3V0ZQogCiAJWyAteiAiJHBlZXI2YWRkciIgXSAmJiB7CiAJCXByb3RvX25vdGlmeV9l
cnJvciAiJGNmZyIgIk1JU1NJTkdfUEVFUl9BRERSRVNTIgpAQCAtMTUzLDcgKzE1NSw5IEBAIGdy
ZXY2X3NldHVwKCkgewogCQlicmVhawogCWRvbmUKIAotCSggcHJvdG9fYWRkX2hvc3RfZGVwZW5k
ZW5jeSAiJGNmZyIgIiRwZWVyNmFkZHIiICIkdHVubGluayIgKQorCWlmIFsgIiR7bm9ob3N0cm91
dGV9IiAhPSAiMSIgXTsgdGhlbgorCQkoIHByb3RvX2FkZF9ob3N0X2RlcGVuZGVuY3kgIiRjZmci
ICIkcGVlcjZhZGRyIiAiJHR1bmxpbmsiICkKKwlmaQogCiAJWyAteiAiJGlwNmFkZHIiIF0gJiYg
ewogCQlsb2NhbCB3YW5pZj0iJHR1bmxpbmsiCkBAIC0yNjIsNiArMjY2LDcgQEAgcHJvdG9fZ3Jl
X2luaXRfY29uZmlnKCkgewogCXByb3RvX2NvbmZpZ19hZGRfc3RyaW5nICJpcGFkZHIiCiAJcHJv
dG9fY29uZmlnX2FkZF9zdHJpbmcgInBlZXJhZGRyIgogCXByb3RvX2NvbmZpZ19hZGRfYm9vbGVh
biAiZGYiCisJcHJvdG9fY29uZmlnX2FkZF9ib29sZWFuICJub2hvc3Ryb3V0ZSIKIH0KIAogcHJv
dG9fZ3JldGFwX2luaXRfY29uZmlnKCkgewpAQCAtMjc1LDYgKzI4MCw3IEBAIHByb3RvX2dyZXY2
X2luaXRfY29uZmlnKCkgewogCXByb3RvX2NvbmZpZ19hZGRfc3RyaW5nICJwZWVyNmFkZHIiCiAJ
cHJvdG9fY29uZmlnX2FkZF9zdHJpbmcgIndlYWtpZiIKIAlwcm90b19jb25maWdfYWRkX3N0cmlu
ZyAiZW5jYXBsaW1pdCIKKwlwcm90b19jb25maWdfYWRkX2Jvb2xlYW4gIm5vaG9zdHJvdXRlIgog
fQogCiBwcm90b19ncmV2NnRhcF9pbml0X2NvbmZpZygpIHsKLS0gCjIuMjEuMAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
