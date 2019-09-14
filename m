Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79407B2B63
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 15:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4G34bNpIZP32aBdCx/5EszF2JZEpaSjcC3pb1Hjq7s=; b=CIz5wY6u8PQba8
	RQplTVsktYiqhYqNui5O78kG8oBXMD0ao1oivCcqSP0JKdTP1o3+L3vYtvTnHMU/6xWdV8SAJe+Hp
	Njp2ZtqLpW5zJUU0zt4olxyquJBfZJnQW59b6gethaulEGWzfI1lwPKMz91oBp/Oqcu//XYQ8lLBA
	ZrrLQ+d73NNFxMk8gSX4113B9mDfqF5jJmtWc//0f6etc3/QCM6QBicYMTqYCYUo0nVLpUCRsixLJ
	xrSvjsN/Dz/3k4urGOLAjb2irB0dhc+3Pmsuh32DMs0F2YPoYksyAkFyS6Zznxcf5GIR4dBuQWMl7
	5Mj5xiBdju+BBMhZ7XPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i98Bk-0002T3-8s; Sat, 14 Sep 2019 13:34:08 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i98BY-0002Sf-Tx
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 13:34:00 +0000
Received: by mail-ed1-x541.google.com with SMTP id v38so29331094edm.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 06:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=AFvQzLXEgAJ8CZ9MFGbiGpC5JCrmWkE9CzbbPyWjOiE=;
 b=uOr5v4XhmBqKfA2YakYyIb4O8HDGifnup8jcutJWsRKe6bo2YUT6OEcfcyVG3Yo9Dq
 6379EC/fEnq2KswMwtEuZ4k8ooH/djhfEGKvrtwYt6PQPtwZbhkPmcqN19zPQGSjYyJo
 8lzS4/b3a+wh4LEB3X2wrWIgTI/mQqWMP166KJzd0/fjfCLCp9jeyfJqqX9vo2IpHjaK
 GZ/HlgBTJ0P2hfzOCClUdINvgkHdmvaRUM2wQa4QTCOSHYokL+DwtIGqZpvGw4dyvcp6
 QZ+OcghtD4YD5E0cyE+/DW2WPp/Kvf2h0Mc0N/E+cE5w2YdYL1KXpUq6iid+96RaZOqI
 y3Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=AFvQzLXEgAJ8CZ9MFGbiGpC5JCrmWkE9CzbbPyWjOiE=;
 b=jPL/TjQfYPsNCaFHKKa/mxkIBQqURni5tZD3KEQ+ICyam0nYhW0MZrO6Qc4jEQLUgC
 OrWlGBFdNJAaKpd+aX2xtIDpid+i/fTo7Rl/5EBQ4rpLFGuYiJHvgpV2ivtVJM5d5KcY
 fm7HfD2hXakMRBfndV6gy60JdN5XGvIzzKKva3K/BE7dMJ6Aamshs2NQN5C0G1aKhgiy
 8bBw3BYHmVuyde4coNlvBh6SMT1uL18s1Y4LP+Uo+VntvlDJsetsIt9MPBkiErIbOduo
 zAEOb/2jf2WLRrQ67CoZHJektbWC7wYZ3DkOk07w1gofhryDzM4+QSQ5LVX7U0iLVuLs
 OcVw==
X-Gm-Message-State: APjAAAW+xXxGC4TDhD/N9z/aWRSQoyGsIseqbw1PiF8P/pYeqECvUoWN
 gnEdT6yZ+PqZORH+F5VefA8=
X-Google-Smtp-Source: APXvYqyuSiGRFBVdVqt9oopJya2A5ABOLh+G6dEVA5y2MPop9JSpIAKYCIOu0bExxSzG+6TUUw2UZg==
X-Received: by 2002:a50:95c1:: with SMTP id x1mr4727487eda.180.1568468034895; 
 Sat, 14 Sep 2019 06:33:54 -0700 (PDT)
Received: from aarau.fritz.box ([81.221.232.148])
 by smtp.gmail.com with ESMTPSA id bo1sm3485541ejb.56.2019.09.14.06.33.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Sep 2019 06:33:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: =?utf-8?Q?Ivan_H=C3=B6rler?= <ivanhoerler@gmail.com>
In-Reply-To: <020801d56a73$9c3f6000$d4be2000$@adrianschmutzler.de>
Date: Sat, 14 Sep 2019 15:33:53 +0200
Message-Id: <93CCC336-E4D5-431A-ADA0-AFFB23B4C0A8@gmail.com>
References: <8957A07D-2E40-45D2-9EF4-AA06AE649692@gmail.com>
 <020801d56a73$9c3f6000$d4be2000$@adrianschmutzler.de>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_063357_020095_FA789E55 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ivanhoerler[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [ramips] Linkit Smart 7688 kmod-sdhci-mt7620
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkKc28gaSBkaWQ6IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvcHVsbC8yNDEw
ClRoYW5rcyBmb3IgY29tbWVudHMgaWYgaXRzIGRvbmUgd3JpZ2h0IG9yIG5vdC4gSXTigJlzIG15
IGZpcnN0LgpSZWdhcmRzLCBJdmFuIEjDtnJsZXIKCj4gQW0gMTMuMDkuMjAxOSB1bSAyMjo0MSBz
Y2hyaWViIEFkcmlhbiBTY2htdXR6bGVyIDxtYWlsQGFkcmlhbnNjaG11dHpsZXIuZGU+Ogo+IAo+
IEhpLAo+IAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBvcGVud3J0LWRl
dmVsIFttYWlsdG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3JnXSBPbiBC
ZWhhbGYgT2YgSXZhbiBIw7ZybGVyCj4+IFNlbnQ6IEZyZWl0YWcsIDEzLiBTZXB0ZW1iZXIgMjAx
OSAyMjozMgo+PiBUbzogb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+PiBTdWJqZWN0
OiBbT3BlbldydC1EZXZlbF0gW3JhbWlwc10gTGlua2l0IFNtYXJ0IDc2ODgga21vZC1zZGhjaS1t
dDc2MjAKPj4gCj4+IEhpCj4+IEkgaGF2ZSBhIHF1ZXN0aW9uIGFib3V0IGhvdyBvcGVud3J0IGhh
bmRsZXMgcGFja2FnZXMgbmVlZGVkIGJ5IGEgdGFyZ2V0Lgo+PiBUaGUgTGlua2l0IFNtYXJ0IDc2
ODggaGFzIGEgU0QtQ2FyZCByZWFkZXIgdGhhdCBkb2VzIG5vdCB3b3JrIHdpdGggdGhlIG9mZmlj
aWFsIGJ1aWxkIG9mIG9wZW53cnQgMTguMDYuCj4+IEFkZGluZyAga21vZC1zZGhjaS1tdDc2MjAg
bWFrZXMgaXQgd29ya2luZy4KPj4gSSB0aGluayBpdCB3b3VsZCBiZSBuaWNlIHRvIGdldCBhIGZ1
bGx5IHdvcmtpbmcgZGV2aWNlIHdoZW4gdXBkYXRlaW5nIHdpdGggdGhlIG9mZmljaWFsIGJ1aWxk
LiBSaWdodD8KPj4gCj4+IFNvIGkgaGFkIGEgbG9vayBpbiB0byB0aGUgZmlsZXMgYW5kIGZvdW5k
Cj4+IG9wZW53cnQvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2eDgvdGFyZ2V0Lm1rCj4+IGFuZAo+
PiBvcGVud3J0L3RhcmdldC9saW51eC9yYW1pcHMvbXQ3Nng4L3Byb2ZpbGVzLzAwLWRlZmF1bHQu
bWsKPj4gd2hlcmUgc29tZSBwYWNrYWdlcyBhcmUgZGVmaW5lZC4KPiAKPiB0aGlzIHNvdW5kcyBs
aWtlIGEgZGV2aWNlLXNwZWNpZmljIGNoYW5nZSB0byBtZS4KPiAKPiBUbyBhZGQgcGFja2FnZXMg
Zm9yIHNwZWNpZmljIGRldmljZXMsIHlvdSB3b3VsZCBub3JtYWxseSBhZGQgaXQgdG8gdGhlIERF
VklDRV9QQUNLQUdFUyB2YXJpYWJsZSBpbiB0aGUgY29ycmVzcG9uZGluZyBkZXZpY2Ugbm9kZSBs
b2NhdGVkIGluIHRhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3Nng4Lm1rIChmb3IgeW91ciBz
dWJ0YXJnZXQpLgo+IAo+IElmIHRoaXMgcHJvdmVzIHRvIGJlIHdvcmtpbmcsIHBsZWFzZSBzZW5k
IGEgcGF0Y2ggdG8gdGhpcyBsaXN0IG9yIG9wZW4gYSBQdWxsIFJlcXVlc3QgaW4gR2l0SHViIHRv
IHNoYXJlIHlvdXIgaW1wcm92ZW1lbnQhCj4gCj4gQmVzdAo+IAo+IEFkcmlhbgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
