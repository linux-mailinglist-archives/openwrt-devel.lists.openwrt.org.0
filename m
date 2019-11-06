Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0723F1493
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 12:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1/u4zYjUarSO9hac+D3ksE8pGtcpsrIzgx7fyQ2Uoo=; b=BOYKDhN4TpTNTn
	SaoiXkoGIoVFjca5HVo4NpcLxXxL5qfX9WjygV+0z6FubMYFi9P0UswercInLSfiecgK8s2XsBNW7
	/Tr4gy7ZqKPy6j8IDiI2BbUhY5gGiUON8BRQM9+jhzV0QWEWRs+KNTliI9fCEjVdMBp1ylhg8E4B+
	n64WrAZMDvVsdcROll7ntvM+Ah779VUQp3Yl5sQu46SRaQGCXYOIvfYXNhOixFFqAsRDb2XnJu+hn
	TvQ0fpJdsZApV7Bt9tqC0ewSmzKoeFyizBD+BGfd/APInvf0TOz3G//YegAcVd+yGR6+tOd4vpMmn
	CNDjnVsSBrIok0Cw6wmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJ9H-0002ps-TY; Wed, 06 Nov 2019 11:06:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJ7y-0001SZ-SQ
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 11:05:32 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 66A9A6B29;
 Wed,  6 Nov 2019 12:05:25 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b1e9f0c1;
 Wed, 6 Nov 2019 12:05:15 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 12:05:10 +0100
Message-Id: <20191106110514.20413-6-ynezz@true.cz>
In-Reply-To: <20191106110514.20413-1-ynezz@true.cz>
References: <20191106110514.20413-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_030531_074963_048A28EE 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07 05/14] hostapd: revert signature
 change in patch
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 "Leon M. George" <leon@georgemail.eu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogIkxlb24gTS4gR2VvcmdlIiA8bGVvbkBnZW9yZ2VtYWlsLmV1PgoKVGhlIG9yaWdpbmFs
IHdwYV9oZXhkdW1wIHVzZXMgYSAndm9pZCAqJyBmb3IgdGhlIHBheWxvYWQuICBXaXRoIHBhdGNo
CjQxMC1saW1pdF9kZWJ1Z19tZXNzYWdlcywgdGhlIHNpZ25hdHVyZSBjaGFuZ2VzIGFuZCBjb21w
aWxlciB3YXJuaW5ncwpvY2N1ciBhdCB2YXJpb3VzIHBsYWNlcy4gIE9uZSBzdWNoIHdhcm5pbmcg
aXM6Cgogd3BhX2RlYnVnLmg6MTA2OjIwOiBub3RlOiBleHBlY3RlZCAnY29uc3QgdTggKiB7YWth
IGNvbnN0IHVuc2lnbmVkIGNoYXIgKn0nIGJ1dCBhcmd1bWVudCBpcyBvZiB0eXBlICdzdHJ1Y3Qg
d3BhX2VhcG9sX2tleSAqJwoKU2lnbmVkLW9mZi1ieTogTGVvbiBNLiBHZW9yZ2UgPGxlb25AZ2Vv
cmdlbWFpbC5ldT4KW2NvbW1pdCBtZXNzYWdlIGZhY2VsaWZ0XQpTaWduZWQtb2ZmLWJ5OiBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgooY2hlcnJ5IHBpY2tlZCBmcm9tIGNvbW1pdCBhMTIz
ZGYyNzU4NDZiMWI4M2FhZjNkNzQ4OGExNTQ0ZjdjMGUwOWFhKQotLS0KIC4uLi9zZXJ2aWNlcy9o
b3N0YXBkL3BhdGNoZXMvNDEwLWxpbWl0X2RlYnVnX21lc3NhZ2VzLnBhdGNoICAgICB8IDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL3BhdGNoZXMvNDEwLWxpbWl0X2Rl
YnVnX21lc3NhZ2VzLnBhdGNoIGIvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQvcGF0
Y2hlcy80MTAtbGltaXRfZGVidWdfbWVzc2FnZXMucGF0Y2gKaW5kZXggZDE4MmU4ZDk4NjgxLi42
ODc1ODlkNzQ2MzggMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBk
L3BhdGNoZXMvNDEwLWxpbWl0X2RlYnVnX21lc3NhZ2VzLnBhdGNoCisrKyBiL3BhY2thZ2UvbmV0
d29yay9zZXJ2aWNlcy9ob3N0YXBkL3BhdGNoZXMvNDEwLWxpbWl0X2RlYnVnX21lc3NhZ2VzLnBh
dGNoCkBAIC0xMjQsNyArMTI0LDcgQEAKICAgKiBjb25maWd1cmF0aW9uLiBUaGUgY29udGVudHMg
b2YgYnVmIGlzIHByaW50ZWQgb3V0IGhhcyBoZXggZHVtcC4KICAgKi8KIC12b2lkIHdwYV9oZXhk
dW1wKGludCBsZXZlbCwgY29uc3QgY2hhciAqdGl0bGUsIGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90
IGxlbik7Ci0rc3RhdGljIGlubGluZSB2b2lkIHdwYV9oZXhkdW1wKGludCBsZXZlbCwgY29uc3Qg
Y2hhciAqdGl0bGUsIGNvbnN0IHU4ICpidWYsIHNpemVfdCBsZW4pCisrc3RhdGljIGlubGluZSB2
b2lkIHdwYV9oZXhkdW1wKGludCBsZXZlbCwgY29uc3QgY2hhciAqdGl0bGUsIGNvbnN0IHZvaWQg
KmJ1Ziwgc2l6ZV90IGxlbikKICt7CiArCWlmIChsZXZlbCA8IENPTkZJR19NU0dfTUlOX1BSSU9S
SVRZKQogKwkJcmV0dXJuOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
