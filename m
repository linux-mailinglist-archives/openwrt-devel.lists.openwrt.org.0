Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE2212C251
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 12:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3tcSrK8vDWexSkxzh/V3rAVvLV/NToKmwqrOAxz5Iwk=; b=eWVXxHkzI6KJvE5LMavMQ3dON
	NSibyEv13ZQW0347jQR64cRU1CQ13INMxa5lRwYJ3MzzSkb2NPY02Qci9fSBVfuouyCjmiagnx6+Q
	ytSD7ZY0IEtNLYL9keK4bOpcqZyL0wqZQb2NTqFVmT853ZSs1mOgMCJXEfjah/L/rPSBS0RuoE2xP
	kCCRLoOQR639A/QMJo8f/ED5dVAaglBxRqsMMlCWp1A0lhGZaUbKaGl+7IoGXUFUArVlSw2gl7az3
	L97KiIgigBq9Z9PWqpbzWxxJjUY3ef0KhtTFm09IPgysWzdv3oa+k9QXbiEnTIxEuwJiAGT+fdpKy
	29LRPQT4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilWv8-0003aR-UD; Sun, 29 Dec 2019 11:39:42 +0000
Received: from welho-filter2.welho.com ([83.102.41.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilWuz-0003ZE-AZ
 for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 11:39:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter2.welho.com (Postfix) with ESMTP id 23B69238CD;
 Sun, 29 Dec 2019 13:39:27 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter2.welho.com [::ffff:83.102.41.24]) (amavisd-new,
 port 10024)
 with ESMTP id w0c1zJs2aMWe; Sun, 29 Dec 2019 13:39:26 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 2F58E7A;
 Sun, 29 Dec 2019 13:39:22 +0200 (EET)
To: openwrt-devel@lists.openwrt.org, petrn@me.com
References: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
From: Hannu Nyman <hannu.nyman@welho.com>
Message-ID: <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
Date: Sun, 29 Dec 2019 13:39:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101
 Thunderbird/72.0
MIME-Version: 1.0
In-Reply-To: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_033933_535638_DE6B5A97 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Reply-To: hannu.nyman@iki.fi
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ID4gVGhlIHByb2JsZW0gZG9lcyBub3Qgc2VlbSB0byBiZSB3aXRoIHRoZSBpbWFnZSAtIG9sZGVy
IGJ1aWxkcyB1cGdyYWRlIHRvIAp0aGUgc2FtZSBpbWFnZSBqdXN0IGZpbmUsIGJ1dCB0aGUgcmVj
ZW50IG9uZXMgc2VlbSB0byBmYWlsLgogPgogPiBFeGFtcGxlOiB0YWtpbmcgdGhlIG1vc3QgcmVj
ZW50IHJwaS00LXNxdWFzaGZzLWZhY3RvcnkuaW1nLmd6IGZyb20gCjIwMTktMTItMjggYW5kIHRy
eWluZyB0byB1cGdyYWRlIHRvIHJwaS00LXNxdWFzaGZzLXN5c3VwZ3JhZGUuaW1nLmd6IGZyb20g
dGhlIApzYW1lIGRhdGUgZG9lcyBmYWlsIGFzIGluZGljYXRlZCBhYm92ZS4KCgpQdXJlIGd1ZXNz
LCBidXQgeW91ciBzeW1wdG9tcyBtaWdodCBiZSBkdWUgdG8gdGhlIGJyb2tlbiB1YnVzIGFuZC9v
ciBsaWJ1Ym94IApiZXR3ZWVuIDIwMTktMTItMjYgYW5kIDIwMTktMTItMjkuCih1YnVzIHdhcyBi
cm9rZW4gb24gMjZ0aCBhbmQgd2FzIGZpeGVkIG9uIDI4dGgsIGxpYnVib3ggd2FzIGJyb2tlbiBv
biAyNnRoIAphbmQgd2FzIGZpeGVkIG9uIDI5dGggZXZlbmluZykKCkFzIHN5c3VwZ3JhZGUgdXNl
cyB1YnVzIG1lc3NhZ2luZyB1c2luZyBibG9ibXNnIChmcm9tIGxpYnVib3gpIGZvciBpbWFnZSAK
dmFsaWRhdGlvbiBtZXNzYWdpbmcsIGl0IGlzIHF1aXRlIHBvc3NpYmxlIHRoYXQgeW91ciBzeW1w
dG9tcyBhcmUgY2F1c2VkIGJ5IAp0aG9zZS4gWW91ciBpbWFnZSBvZiAyOHRoIGhhcyBicm9rZW4g
ZnVuY3Rpb25hbGl0eS4KCkkgYW0gbm90IHN1cmUgc3VyZSB3aGF0IGlzIHRoZSBlYXNpZXN0IHdh
eSB0byBzeXN1cGdyYWRlIGF3YXkgZnJvbSB0aGUgYnJva2VuIApmaXJtd2FyZXMuCk1heWJlIHVz
aW5nICJzeXN1cGdyYWRlIC1GIsKgICgtLWZvcmNlKSB0byBieXBhc3MgdmFsaWRhdGlvbj8KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
