Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E984BAC5
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 16:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=V9s/h2PvkVRphINTsPkm8rrHkWmEv4ERSh13RCmarns=; b=CP8
	y7yKDiSOyowrKJMav7aurLoGImAI2r2RXpBExeLgvK2D+NgvO+C3wu1XcB+5xKrFggexftVNDq6Ot
	zfh94Lv71jSc4a4k807yqYDDQUn1W7QbhCAydxojmpjc2nIr5/IV7DUASUCm8/YdfMaRWZq0J36zC
	sMHio+CZg2f4Co4DLVvFiuaMQOmnwoJrFPOzWBkS6oN7zxL9N924m5d7YwdpKKN86JL1IXZgY1j7x
	QlESP9yd3uLkHfD4C6vh0802OVH9WyAb082l4XSMq7ygeGXnVDpC/Ivhm4i/3iEcd66bOhWCpvhEs
	zU2nkobKF6ZYZRRHEbaY/AGNt4GqdEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbFj-00063W-5y; Wed, 19 Jun 2019 14:07:55 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbFL-0005sw-Ke
 for openwrt-devel@lists.openwrt.org; Wed, 19 Jun 2019 14:07:33 +0000
Received: by mail-yb1-xb34.google.com with SMTP id x32so3395635ybh.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Jun 2019 07:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=sFD3oDKKICY8PMWcB4EBN2hQcog5u22YeKjoBnXkzVc=;
 b=k7aOZy0AXoSLHvS9FE9f5d5Mv8CrYHQ9waASSARPscSU5hLnuA6A27DQC3uy0RSOYm
 AB0uBN+uJ3FkMB20IgQ6Yvpo63Cj25DkyTFF7hJSqv38NMJTrJvBxY8xjNfhJQWehJxJ
 KG7sG2WDUejCRyXD+tDkl06ZvkGhwAjdIPUKRCvZFEIozFrpAPlZuBZBL3NdJlB8thBr
 RzZS7YSZn6axzJJV72oW1NlZYGILJ6ESJwVLbQk/EJl8p+Uade/c1XQn6ifc56bC8oi6
 1JZZD8sxMivttS/zcpEkfPlvSoIUtYtQqEQgu8OZDXtnwn9aSSlHYcRN5Sz02MgbbtU+
 0q5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=sFD3oDKKICY8PMWcB4EBN2hQcog5u22YeKjoBnXkzVc=;
 b=uZwR/Oeh3nOxSfbjTYUHCtFVUoU77ubujsCqhg1A0NU4zB6ihzrKlPxtiNI3WeAQnv
 wfIk8EZDQIRks//h5U91XtpWf8B37Gc9QcWq0ZRa7VN1bK/2f6YIwx9hkNtjw0PRRgmJ
 1Aps+TDT6vqQemy81x/jC+2j5a3NzKD+rhbEd8IDz6bVANRBhYGq/C9qfZS4W0dm5BSE
 RntrriZf9W83/dgnmzVP5gyF3RoLoGW+FDM/hfrVD/PVq+OdIVzfXUEz8Sdabof5ci3U
 SJskmC+ta9y41JYhOgGpha7+xJ3sM8yZ6od8ffF47Uu9l1KlOvkngs5J12SYw7S8RUX3
 farQ==
X-Gm-Message-State: APjAAAXf9W5W1fM7xrFt5sE/yykVO1F8TrZIsZc4iRo5UYHFF+cFJDU7
 n/zxdjWEO479tb3T/ppzK6sGt2B6MapuPEtpOpZpcoly
X-Google-Smtp-Source: APXvYqwCdHix5Y3Ut/0TNKL78eV3duIraUg7kQ4sA7xVjaXrA8Run1EjIkuzfSLK4Vh3iQF5FfCBp/Yb4uiTU8RmtFM=
X-Received: by 2002:a25:df92:: with SMTP id w140mr1743411ybg.71.1560953249805; 
 Wed, 19 Jun 2019 07:07:29 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 19 Jun 2019 16:07:18 +0200
Message-ID: <CACna6ryNB2PN2qwyctK7aTVnvhB+F6zTjGUMs=6vZ4XDeAyF6A@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_070731_701246_127E340F 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b34 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: [OpenWrt-Devel] sysupgrade: extending firmware validation
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

Q3VycmVudGx5IHRhcmdldHMgY2FuIGltcGxlbWVudCBwbGF0Zm9ybV9jaGVja19pbWFnZSgpIHRo
YXQgdmVyaWZpZXMKc3VibWl0dGVkIGZpcm13YXJlIGZpbGUuIEl0IG1heSByZXR1cm4gYSBzdWNj
ZXNzIG9yIGZhaWx1cmUuCgpJJ20gbG9va2luZyBmb3IgbW9yZSBjb21wbGV4IGltcGxlbWVudGF0
aW9uL3NvbHV0aW9uLiBJJ2QgbGlrZQpmaXJtd2FyZSB2YWxpZGF0aW9uIHRvIHByb3ZpZGUgbW9y
ZSBpbmZvIGxpa2U6CjEpIElzIGZpcm13YXJlIHZhbGlkCjIpIFdoYXQgbWFrZXMgZmlybXdhcmUg
aW52YWxpZCBpZiBhbnl0aGluZwozKSBJcyB0aGF0IHBvc3NpYmxlIHRvIGZvcmNlIGZpcm13YXJl
IGluc3RhbGxhdGlvbgoKSGF2aW5nIHN1Y2ggaW5mbyBhdmFpbGFibGUgd291bGQgbWFrZSB1c2Vy
IGZlZWRiYWNrIG11Y2ggbW9yZQpmcmllbmRseS4gSSdkIGxpa2UgbHVjaSB0byB1c2UgdGhhdCBu
ZXcgaW5mbyAmIGRpc3BsYXkgYSBwcm9wZXIKZXJyb3Ivd2FybmluZyB0byBhIHVzZXIgaWYgbmVl
ZGVkLgoKU29tZSBwb3NzaWJsZSB2YWxpZGF0aW9uIGZhaWx1cmVzOgoxKSBGaXJtd2FyZSBub3Qg
bWF0Y2hpbmcgZGV2aWNlIG1vZGVsCjIpIEZpbGUgdG9vIGJpZyB0byBnZXQgZmxhc2hlZAozKSBD
aGVja3N1bSBpbnZhbGlkIChjb3JydXB0ZWQgZmlsZSkKNCkgU2lnbmF0dXJlIG1pc3NpbmcgKGNh
biBiZSBkYW5nZXJvdXMgdG8gZmxhc2ggaXQpCgpsdWNpIGNvdWxkIGRpc3BsYXkgd2FybmluZ3Mg
YW5kIHRoZW4gb2ZmZXIgYW4gb3B0aW9uIHRvIGZsYXNoIGEKZmlybXdhcmUgYW55d2F5LiBPciBk
aXNwbGF5IGEgY3JpdGljYWwgZXJyb3IgYW5kIGRvbid0IG9mZmVyIHN1Y2gKb3B0aW9uIGF0IGFs
bC4gSW4gYW55IGNhc2UgdGhhdCBzaG91bGQgYmUgbXVjaCBtb3JlIG1lYW5pbmdmdWwgdGhhbiBh
CnNpbmdsZSBlcnJvciBtZXNzYWdlLgoKSSBhbHNvIHRob3VnaHQgd2UgbWF5IHdhbnQgdG8gc3Rh
cnQgc2lnbmluZyBPcGVuV3J0IGZpcm13YXJlcyBvbmUgZGF5LgoKTXkgcXVlc3Rpb24gaXM6IHdo
YXQgZG8geW91IGZpbmQgdGhlIGJlc3Qgd2F5IG9mIGltcGxlbWVudGluZyBpdD8KCkEgc2ltcGxl
IHJldHVybiBjb2RlIG9mIGJhc2ggc2NyaXB0IHdvbid0IGJlIHN1ZmZpY2llbnQgKHRvbyBtYW55
IGRhdGEKdG8gcGFzcywgZXZlbiBpZiB3ZSBkZWNpZGUgdG8gdXNlIHNvbWUgYml0IGZsYWdzKS4g
SSB3YXMgdGhpbmtpbmcKYWJvdXQgcHJvdmlkaW5nIHZhbGlkYXRpb24gcmVzdWx0IHVzaW5nIEpT
T04uIFNob3VsZCB0aGF0IGJlIHNvbWUKc3RhbmRhbG9uZSBhcHAgb3IgYSB1YnVzIGRlYW1vbj8g
SG93IGNvdWxkIHdlIGhhbmRsZSB0YXJnZXQtc3BlY2lmaWMKdmFsaWRhdGlvbiBzdGVwcz8KCi0t
IApSYWZhxYIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
