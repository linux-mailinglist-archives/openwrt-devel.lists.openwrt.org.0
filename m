Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4082E1761D6
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 19:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBlNDsUjAqlBK5tStxc9R5SZKcKOaQnjzsK/yiabPAs=; b=r35rH1u6DlaJjn
	ke2KQxaku6Pc3V2433WxLQ7v4BfrNrOgzXvouJVLmcASNn4ZkRJ84g8vJJ4d5rWdZxbkq0f4hG7M6
	QEFvRIW2qUwe9OIJ7cfSwt3mfEAqrhP20u48zfjmlLNqsVltUix8erez4+vk1gWMNvfG+ffLpKXPw
	BYAjCDXZ1nAW/v3aJUYo7BDZA2g74SRQM9u9szkXfc6fgnBN9SXACNCohNikGOzHIicrwQPMgEKtD
	shm5peyJwIk5aRF4OD2YUHL7G6AR2S5kE9Sud1YfQW+ty3FsegUXMlwilh2KYW+cb8v6ZIG1cciHp
	9MVggDZWH1mUktgo4Q5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pQZ-0000a9-IT; Mon, 02 Mar 2020 18:04:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pQH-0000Sc-39
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 18:04:10 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 24AC84170;
 Mon,  2 Mar 2020 19:04:06 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id b05bd899;
 Mon, 2 Mar 2020 19:03:52 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Mar 2020 18:42:55 +0100
Message-Id: <20200302174256.3238-2-ynezz@true.cz>
In-Reply-To: <20200302174256.3238-1-ynezz@true.cz>
References: <20200302174256.3238-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100409_292781_B36BDDB3 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/3] imx6: apalis: fix variables in
 bootscript
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VS1Cb290IDIwMjAuMDEgaGFzIGNoYW5nZWQgbmFtZXMgZm9yIHNhbWUgdmFyaWFibGVzLCBhZGp1
c3QgdGhlCmJvb3RzY3JpcHQgYWNjb3JkaW5nbHkuIEFkZGVkIGJvb3RfZmlsZSB2YXJpYWJsZSBh
cyB0aGUgZGVmYXVsdCB2YWx1ZSBpcwp6SW1hZ2UuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0
aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHRhcmdldC9saW51eC9pbXg2L2ltYWdlL2Jvb3RzY3Jp
cHQtYXBhbGlzIHwgNyArKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9pbXg2L2ltYWdlL2Jvb3Rz
Y3JpcHQtYXBhbGlzIGIvdGFyZ2V0L2xpbnV4L2lteDYvaW1hZ2UvYm9vdHNjcmlwdC1hcGFsaXMK
aW5kZXggODFhNTAxY2M2M2Q2Li4zYTNhNmRhZGIxNDUgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51
eC9pbXg2L2ltYWdlL2Jvb3RzY3JpcHQtYXBhbGlzCisrKyBiL3RhcmdldC9saW51eC9pbXg2L2lt
YWdlL2Jvb3RzY3JpcHQtYXBhbGlzCkBAIC0xLDEyICsxLDEzIEBACi1lY2hvICJUb3JhZGV4IEFw
YWxpcyBPcGVuV3J0IEJvb3Qgc2NyaXB0IHYxLjAiCitlY2hvICJUb3JhZGV4IEFwYWxpcyBPcGVu
V3J0IEJvb3Qgc2NyaXB0IHYxLjEiCiAKLXJ1biBmaW5kdXVpZAorcnVuIGVtbWNmaW5kdXVpZAog
CiBzZXRlbnYgbmV4dGNvbiAwCitzZXRlbnYgYm9vdF9maWxlIHVJbWFnZQogc2V0ZW52IGZkdF9m
aWxlIGlteDZxLWFwYWxpcy1peG9yYS5kdGIKIHNldGVudiByb290IHJvb3Q9UEFSVFVVSUQ9JHt1
dWlkfSByb290ZnN0eXBlPXNxdWFzaGZzIHJvb3R3YWl0CiBzZXRlbnYgYm9vdGFyZ3MgZWFybHlw
cmludGsgY29uc29sZT0ke2NvbnNvbGV9LCR7YmF1ZHJhdGV9bjggJHtyb290fQotc2V0ZW52IGZz
bG9hZCBleHQ0bG9hZCBtbWMgJHttbWNib290ZGV2fToke2Jvb3RwYXJ0fQorc2V0ZW52IGZzbG9h
ZCBleHQ0bG9hZCBtbWMgJHtlbW1jZGV2fToke2VtbWNib290cGFydH0KIAogaWYgJHtmc2xvYWR9
ICR7a2VybmVsX2FkZHJfcn0gJHtib290X2ZpbGV9OyB0aGVuCiAJaWYgJHtmc2xvYWR9ICR7ZmR0
X2FkZHJfcn0gJHtmZHRfZmlsZX07IHRoZW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
