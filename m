Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A28135C6D
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 14:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmyxqXjgIL7wAxhJE8OoQufuz1tJTT464FWCjaLpRi8=; b=i5wbuHq3AunhUy
	D4kHukgJ33CIWxrh+DiiBxubGSTcrqS7++pTlOj0fqkrX+2UzRR2vq94njN6zcD+hu0e3dEKTgVQ9
	e3JdRX71A0ib/aP6XM8ilair64T1DBx4ffYbC8iOiYtmwGkCGZiYYGP1kWX105HEJFozsckLqy+P2
	r22tOZFWwJv9MaqTUT8LNcL1e3pSvssjcfprKLSVuxzzNN/GK0ZgLdm7UWihK+sg3ffaXlDZU5V0D
	ZHji+V4AAC1Q14pzDBxHocBc/TneZ/kdOabZzXl+4Sud3Wy7qhTRV/c+2XDFoIG8g4pd4NPTl9fCz
	nXnPrJ8QyIFioGFOxNjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUt6-0006Cy-Fo; Wed, 05 Jun 2019 12:19:28 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUsy-00069i-Cu
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 12:19:22 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id x55CJG3W003402
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 5 Jun 2019 14:19:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1559737156; bh=aUxrVsE926qkQWtD1NnG4l8E5xpRAzGQJ5IR1KNU10U=;
 h=From:To:Cc:Subject:Date:Message-Id:References:From;
 b=YkzE2Q/8BrkbdKioWqvvUv+PXd34epdbwKViNbSnjuKiNZL5fotByIA62TOADnip0
 VuXQPg6kbGFBBYbf6Wx1jP81Abqskb0gU3VtkrHnDZiwJGou0jKVKFXh45vS1AFjJk
 mT3pcWu4j8nQZJr5gq6Wt0PR8GY4OUlzmD2cp9Hc=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id x55CJGVf003401;
 Wed, 5 Jun 2019 14:19:16 +0200
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  5 Jun 2019 14:19:11 +0200
Message-Id: <20190605121911.3324-1-bjorn@mork.no>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <87pnnskzlt.fsf@miraculix.mork.no>
References: <87pnnskzlt.fsf@miraculix.mork.no>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on canardo.mork.no
X-Virus-Scanned: clamav-milter 0.100.3 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_051920_787736_9D9F62C9 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2] scripts/feeds: add src-include method
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIHNyYy1pbmNsdWRlIG1ldGhvZCBhbGxvd3MgcmVjdXJzaXZlIGluY2x1c2lvbiBvZiBmZWVk
cy5jb25mIHNuaXBwZXRzLgoKVGhpcyBjYW4gZm9yIGV4YW1wbGUgYmUgdXNlZCBmb3IgYWRkaW5n
IHN0YXRpYyBsb2NhbCBmZWVkcyB0bwpmZWVkcy5jb25mLmRlZmF1bHQgd2l0aG91dCBldmVyIGhh
dmluZyB0byB1cGRhdGUgdGhlIGxvY2FsIGZlZWRzLmNvbmY6Cgogc3JjLWluY2x1ZGUgZGVmYXVs
dHMgZmVlZHMuY29uZi5kZWZhdWx0CiBzcmMtbGluayBjdXN0b20gL3Vzci9sb2NhbC9zcmMvbGVk
ZS9jdXN0b20KClNpZ25lZC1vZmYtYnk6IEJqw7hybiBNb3JrIDxiam9ybkBtb3JrLm5vPgotLS0K
Ckl0IHdvdWxkIG9mIGNvdXJzZSBiZSBuaWNlIG9mIG1lIGlmIEkgaGFkIHRlc3RlZCBteSBwYXRj
aGVzLCBldmVuCmlmIHRoZXkgYXJlIG9ubHkgbWVhbnQgZm9yIGRpc2N1c3Npb24uCgpUaGlzIHZl
cnNpb24gYWN0dWFsbHkgd29ya3MuICBDaGFuZ2VzIGluIHYyOgogLSB1c2UgYSB2YXJpYWJsZSBm
b3IgdGhlIGZpbGUgaGFuZGxlIHNvIHdlIGNhbiBvcGVuIGZpbGVzIHJlY3Vyc2l2ZWx5CiAtIG1h
dGNoIG9uIHRoZSByZWFsICdzcmMtaW5jbHVkZScga2V5d29yZAoKCkJqw7hybgoKIHNjcmlwdHMv
ZmVlZHMgfCAzNyArKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
c2NyaXB0cy9mZWVkcyBiL3NjcmlwdHMvZmVlZHMKaW5kZXggMzA0ZWY2Y2JhZmQxLi5hNGRmZDll
MjYwYTggMTAwNzU1Ci0tLSBhL3NjcmlwdHMvZmVlZHMKKysrIGIvc2NyaXB0cy9mZWVkcwpAQCAt
NDEsMzQgKzQxLDQ5IEBAIG15ICRmZWVkX3NyYyA9IHt9OwogbXkgJGZlZWRfdGFyZ2V0ID0ge307
CiBteSAkZmVlZF92cGFja2FnZSA9IHt9OwogCi1zdWIgcGFyc2VfY29uZmlnKCkgeworc3ViIHBh
cnNlX2ZpbGUoJCQpOworCitzdWIgcGFyc2VfZmlsZSgkJCkgeworCW15ICgkZm5hbWUsICRuYW1l
KSA9IEBfOwogCW15ICRsaW5lID0gMDsKLQlteSAlbmFtZTsKKwlteSAkZmg7CiAKLQlvcGVuIEZF
RURTLCAiZmVlZHMuY29uZiIgb3IKLQkJb3BlbiBGRUVEUywgImZlZWRzLmNvbmYuZGVmYXVsdCIg
b3IKLQkJZGllICJVbmFibGUgdG8gb3BlbiBmZWVkcyBjb25maWd1cmF0aW9uIjsKLQl3aGlsZSAo
PEZFRURTPikgeworCW9wZW4gJGZoLCAkZm5hbWUgb3IgcmV0dXJuIHVuZGVmOworCXdoaWxlICg8
JGZoPikgewogCQljaG9tcDsKIAkJcy8jLiskLy87CisJCSRsaW5lKys7CiAJCW5leHQgdW5sZXNz
IC9cUy87CiAJCW15IEBsaW5lID0gc3BsaXQgL1xzKy8sICRfLCAzOwogCQlteSBAc3JjOwotCQkk
bGluZSsrOwogCiAJCW15ICR2YWxpZCA9IDE7CiAJCSRsaW5lWzBdID1+IC9ec3JjLVtcdy1dKyQv
IG9yICR2YWxpZCA9IDA7CiAJCSRsaW5lWzFdID1+IC9eXHcrJC8gb3IgJHZhbGlkID0gMDsKIAkJ
QHNyYyA9IHNwbGl0IC9ccysvLCAoJGxpbmVbMl0gb3IgJycpOwogCQlAc3JjID0gKCcnKSBpZiBA
c3JjID09IDA7Ci0JCSR2YWxpZCBvciBkaWUgIlN5bnRheCBlcnJvciBpbiBmZWVkcy5jb25mLCBs
aW5lOiAkbGluZVxuIjsKKwkJJHZhbGlkIG9yIGRpZSAiU3ludGF4IGVycm9yIGluICRmbmFtZSwg
bGluZTogJGxpbmVcbiI7CiAKLQkJJG5hbWV7JGxpbmVbMV19IGFuZCBkaWUgIkR1cGxpY2F0ZSBm
ZWVkIG5hbWUgJyRsaW5lWzFdJywgbGluZTogJGxpbmVcbiI7Ci0JCSRuYW1leyRsaW5lWzFdfSA9
IDE7CisJCSRuYW1lLT57JGxpbmVbMV19IGFuZCBkaWUgIkR1cGxpY2F0ZSBmZWVkIG5hbWUgJyRs
aW5lWzFdJyBpbiAnJGZuYW1lJyBsaW5lOiAkbGluZVxuIjsKKwkJJG5hbWUtPnskbGluZVsxXX0g
PSAxOworCisJCWlmICgkbGluZVswXSBlcSAic3JjLWluY2x1ZGUiKSB7CisJCQlwYXJzZV9maWxl
KCRsaW5lWzJdLCAkbmFtZSkgb3IKKwkJCSAgICBkaWUgIlVuYWJsZSB0byBvcGVuIGluY2x1ZGVk
IGZpbGUgJyRsaW5lWzJdJyI7CisJCQluZXh0OworCQl9CiAKIAkJcHVzaCBAZmVlZHMsIFskbGlu
ZVswXSwgJGxpbmVbMV0sIFxAc3JjXTsKIAl9Ci0JY2xvc2UgRkVFRFM7CisJY2xvc2UgJGZoOwor
CXJldHVybiAxOworfQorCitzdWIgcGFyc2VfY29uZmlnKCkgeworCW15ICVuYW1lOworCXBhcnNl
X2ZpbGUoImZlZWRzLmNvbmYiLCBcJW5hbWUpIG9yCisJICAgIHBhcnNlX2ZpbGUoImZlZWRzLmNv
bmYuZGVmYXVsdCIsIFwlbmFtZSkgIG9yCisJICAgIGRpZSAiVW5hYmxlIHRvIG9wZW4gZmVlZHMg
Y29uZmlndXJhdGlvbiI7CiB9CiAKIHN1YiB1cGRhdGVfbG9jYXRpb24oJCQpCi0tIAoyLjExLjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
