Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F431B0CDD
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9oHuMlJnSaznsXumR2w5f4gNfkC2xqbgzjUNFX/XCs=; b=S952h2unzq80/Y
	zkf0J9YCs11kYFApqELQ9/fP+1/BNfnW5IFb/9kG9wnLJB/hNRJHl9SBTD5HgW6PYuz3tHDQh7T1s
	XAc6gl21m3X4xtPmC+wZ/Otg+Wf5gX/juzbHdhmWhZB64p89a+rL80TQ+4IJorakIWRUsNtUI91I8
	E2tJiSaVlxtjTyhHXwFrPOwCTJuR4BRyw00R3+s66qHV56XNYD+ekV5dKG2MiXS+fChrfQe3zrEej
	2rOO9YlsbQKeu8z5LC6HtCeJ+S1Qp+lC0lMRo2wMGQp9/YVGdjmebZkmnXOpO3YTelrTbEi13IzGn
	/79PiJ3GW69BVGuCy4Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWcn-0003Xe-Hl; Mon, 20 Apr 2020 13:38:13 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWab-0000xh-Dp
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:35:59 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id A3BCF6055A;
 Mon, 20 Apr 2020 15:35:52 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org A3BCF6055A
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org A3BCF6055A
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587389753; bh=jxOLS48KvHBIw6Z1eARGYy634JCRUgZXJ9mtZhXhD1w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=unqhXeheooeEujZx7N9vW5bVgDzClS4PJ98LndlY0XSGz4EMqexbvHlwB239bnqmN
 nf1cx+vsmNmFStyDUbvQIjcfGr+913i6Ea+c/lglQkbx5STJqpIyqQSk9MqWQF8rVI
 0JLFNTgF2VJEbfftEBmYtiT2WZWOigmyuSGnyQTE=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:35:52 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:35:00 +0200
Message-Id: <20200420133503.18700-12-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200420133503.18700-1-hacks@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_063557_643050_5009D755 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 11/14] package/base-files: caldata: allow
 setting target file
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyB3aWxsIGVuYWJsZSBwbGF0Zm9ybXMgdG8gZXh0cmFjdCBjYWxkYXRhIHRvIGFuIGFyYml0
cmFyeSBmaWxlLApvciBwYXRjaCBtYWMgaW4gYW4gYWJpdHJhcnkgZmlsZS4KClNpZ25lZC1vZmYt
Ynk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4KLS0tCiBwYWNrYWdlL2Jh
c2UtZmlsZXMvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIHBhY2thZ2Uv
YmFzZS1maWxlcy9maWxlcy9saWIvZnVuY3Rpb25zL2NhbGRhdGEuc2ggfCAyOSArKysrKysrKysr
KysrKysrLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA5IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1maWxlcy9NYWtlZmlsZSBiL3BhY2th
Z2UvYmFzZS1maWxlcy9NYWtlZmlsZQppbmRleCAxNTZlN2JjOGI5Li5mMWYwZjE3YTYwIDEwMDY0
NAotLS0gYS9wYWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUKKysrIGIvcGFja2FnZS9iYXNlLWZp
bGVzL01ha2VmaWxlCkBAIC0xMiw3ICsxMiw3IEBAIGluY2x1ZGUgJChJTkNMVURFX0RJUikvdmVy
c2lvbi5tawogaW5jbHVkZSAkKElOQ0xVREVfRElSKS9mZWVkcy5tawogCiBQS0dfTkFNRTo9YmFz
ZS1maWxlcwotUEtHX1JFTEVBU0U6PTIxOAorUEtHX1JFTEVBU0U6PTIxOQogUEtHX0ZMQUdTOj1u
b25zaGFyZWQKIAogUEtHX0ZJTEVfREVQRU5EUzo9JChQTEFURk9STV9ESVIpLyAkKEdFTkVSSUNf
UExBVEZPUk1fRElSKS9iYXNlLWZpbGVzLwpkaWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZpbGVz
L2ZpbGVzL2xpYi9mdW5jdGlvbnMvY2FsZGF0YS5zaCBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxl
cy9saWIvZnVuY3Rpb25zL2NhbGRhdGEuc2gKaW5kZXggM2JkYjFlNGRkNS4uZTkzNDljN2VlZSAx
MDA2NDQKLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi9mdW5jdGlvbnMvY2FsZGF0
YS5zaAorKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL2Z1bmN0aW9ucy9jYWxkYXRh
LnNoCkBAIC02MCwxNSArNjAsMjEgQEAgY2FsZGF0YV9mcm9tX2ZpbGUoKSB7CiAJbG9jYWwgc291
cmNlPSQxCiAJbG9jYWwgb2Zmc2V0PSQoKCQyKSkKIAlsb2NhbCBjb3VudD0kKCgkMykpCisJbG9j
YWwgdGFyZ2V0PSQ0CiAKLQlkZCBpZj0kc291cmNlIG9mPS9saWIvZmlybXdhcmUvJEZJUk1XQVJF
IGlmbGFnPXNraXBfYnl0ZXMgYnM9JGNvdW50IHNraXA9JG9mZnNldCBjb3VudD0xIDI+L2Rldi9u
dWxsIHx8IFwKKwlbIC16ICIkdGFyZ2V0IiBdICYmIHRhcmdldD0vbGliL2Zpcm13YXJlLyRGSVJN
V0FSRQorCisJZGQgaWY9JHNvdXJjZSBvZj0kdGFyZ2V0IGlmbGFnPXNraXBfYnl0ZXMgYnM9JGNv
dW50IHNraXA9JG9mZnNldCBjb3VudD0xIDI+L2Rldi9udWxsIHx8IFwKIAkJY2FsZGF0YV9kaWUg
ImZhaWxlZCB0byBleHRyYWN0IGNhbGlicmF0aW9uIGRhdGEgZnJvbSAkc291cmNlIgogfQogCiBj
YWxkYXRhX3ZhbGlkKCkgewogCWxvY2FsIGV4cGVjdGVkPSIkMSIKKwlsb2NhbCB0YXJnZXQ9JDIK
KworCVsgLXogIiR0YXJnZXQiIF0gJiYgdGFyZ2V0PS9saWIvZmlybXdhcmUvJEZJUk1XQVJFCiAK
LQltYWdpYz0kKGhleGR1bXAgLXYgLW4gMiAtZSAnMS8xICIlMDJ4IicgL2xpYi9maXJtd2FyZS8k
RklSTVdBUkUpCisJbWFnaWM9JChoZXhkdW1wIC12IC1uIDIgLWUgJzEvMSAiJTAyeCInICR0YXJn
ZXQpCiAJWyAiJG1hZ2ljIiA9ICIkZXhwZWN0ZWQiIF0KIAlyZXR1cm4gJD8KIH0KQEAgLTc3LDYg
KzgzLDcgQEAgY2FsZGF0YV9wYXRjaF9jaGtzdW0oKSB7CiAJbG9jYWwgbWFjPSQxCiAJbG9jYWwg
bWFjX29mZnNldD0kKCgkMikpCiAJbG9jYWwgY2hrc3VtX29mZnNldD0kKCgkMykpCisJbG9jYWwg
dGFyZ2V0PSQ0CiAJbG9jYWwgeG9yX21hYwogCWxvY2FsIHhvcl9md19tYWMKIAlsb2NhbCB4b3Jf
ZndfY2hrc3VtCkBAIC05MSwzOCArOTgsNDQgQEAgY2FsZGF0YV9wYXRjaF9jaGtzdW0oKSB7CiAJ
eG9yX2Z3X2Noa3N1bT0kKHhvciAkeG9yX2Z3X2Noa3N1bSAkeG9yX2Z3X21hYyAkeG9yX21hYykK
IAogCXByaW50ZiAiJWIiICJceCR7eG9yX2Z3X2Noa3N1bTowOjJ9XHgke3hvcl9md19jaGtzdW06
MjoyfSIgfCBcCi0JCWRkIG9mPS9saWIvZmlybXdhcmUvJEZJUk1XQVJFIGNvbnY9bm90cnVuYyBi
cz0xIHNlZWs9JGNoa3N1bV9vZmZzZXQgY291bnQ9MgorCQlkZCBvZj0kdGFyZ2V0IGNvbnY9bm90
cnVuYyBicz0xIHNlZWs9JGNoa3N1bV9vZmZzZXQgY291bnQ9MgogfQogCiBjYWxkYXRhX3BhdGNo
X21hYygpIHsKIAlsb2NhbCBtYWM9JDEKIAlsb2NhbCBtYWNfb2Zmc2V0PSQoKCQyKSkKIAlsb2Nh
bCBjaGtzdW1fb2Zmc2V0PSQzCisJbG9jYWwgdGFyZ2V0PSQ0CiAKIAlbIC16ICIkbWFjIiAtbyAt
eiAiJG1hY19vZmZzZXQiIF0gJiYgcmV0dXJuCiAKLQlbIC1uICIkY2hrc3VtX29mZnNldCIgXSAm
JiBjYWxkYXRhX3BhdGNoX2Noa3N1bSAiJG1hYyIgIiRtYWNfb2Zmc2V0IiAiJGNoa3N1bV9vZmZz
ZXQiCisJWyAteiAiJHRhcmdldCIgXSAmJiB0YXJnZXQ9L2xpYi9maXJtd2FyZS8kRklSTVdBUkUK
KworCVsgLW4gIiRjaGtzdW1fb2Zmc2V0IiBdICYmIGNhbGRhdGFfcGF0Y2hfY2hrc3VtICIkbWFj
IiAiJG1hY19vZmZzZXQiICIkY2hrc3VtX29mZnNldCIgIiR0YXJnZXQiCiAKLQltYWNhZGRyXzJi
aW4gJG1hYyB8IGRkIG9mPS9saWIvZmlybXdhcmUvJEZJUk1XQVJFIGNvbnY9bm90cnVuYyBvZmxh
Zz1zZWVrX2J5dGVzIGJzPTYgc2Vlaz0kbWFjX29mZnNldCBjb3VudD0xIHx8IFwKKwltYWNhZGRy
XzJiaW4gJG1hYyB8IGRkIG9mPSR0YXJnZXQgY29udj1ub3RydW5jIG9mbGFnPXNlZWtfYnl0ZXMg
YnM9NiBzZWVrPSRtYWNfb2Zmc2V0IGNvdW50PTEgfHwgXAogCQljYWxkYXRhX2RpZSAiZmFpbGVk
IHRvIHdyaXRlIE1BQyBhZGRyZXNzIHRvIGVlcHJvbSBmaWxlIgogfQogCiBhdGg5a19wYXRjaF9t
YWMoKSB7CiAJbG9jYWwgbWFjPSQxCisJbG9jYWwgdGFyZ2V0PSQyCiAKLQljYWxkYXRhX3BhdGNo
X21hYyAiJG1hYyIgMHgyCisJY2FsZGF0YV9wYXRjaF9tYWMgIiRtYWMiIDB4MiAiIiAiJHRhcmdl
dCIKIH0KIAogYXRoOWtfcGF0Y2hfbWFjX2NyYygpIHsKIAlsb2NhbCBtYWM9JDEKIAlsb2NhbCBt
YWNfb2Zmc2V0PSQyCiAJbG9jYWwgY2hrc3VtX29mZnNldD0kKChtYWNfb2Zmc2V0IC0gMTApKQor
CWxvY2FsIHRhcmdldD0kNAogCi0JY2FsZGF0YV9wYXRjaF9tYWMgIiRtYWMiICIkbWFjX29mZnNl
dCIgIiRjaGtzdW1fb2Zmc2V0IgorCWNhbGRhdGFfcGF0Y2hfbWFjICIkbWFjIiAiJG1hY19vZmZz
ZXQiICIkY2hrc3VtX29mZnNldCIgIiR0YXJnZXQiCiB9CiAKIGF0aDEwa19wYXRjaF9tYWMoKSB7
CiAJbG9jYWwgbWFjPSQxCisJbG9jYWwgdGFyZ2V0PSQyCiAKLQljYWxkYXRhX3BhdGNoX21hYyAi
JG1hYyIgMHg2IDB4MgorCWNhbGRhdGFfcGF0Y2hfbWFjICIkbWFjIiAweDYgMHgyICIkdGFyZ2V0
IgogfQotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
