Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CDA61DD4
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jul 2019 13:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HguiftDgGxmtICKDBOfScchRY6DlHRtHaQaC5I9rXYE=; b=CT9
	YfdGP8Y9s1rvXFbyfbf0xwaNYOe8kIvFutFjUqxjIJKGxODQCypUQei+JQMOIUSofsUzT4yEUJJOM
	As0x+Sb5If/+PB/P8reiTjJIwpkA9uJ1l37vFR9FLZroWd7xh1vltWGAnSPNAD4OQWYBeRWBxfsnz
	JoBnPvm6NZ5Ew3Z+QSZ7/VOLYwEgo00ycMs+hQaIsVwSQ3oRQqBhANgGnGs7ZlN5gAlvB7H83MEPJ
	MHzBMBBgxoS0VYUyp0jHB5UtfsStR7SIeAlM1Z/Nki9cEDwsJ3F5aG9kSe0wcgMUl1O1pJQotplzf
	mMAVZNuiJj6MbongfkgCVEal84LZtvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkRyh-0006Au-JE; Mon, 08 Jul 2019 11:38:39 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkRyX-00069k-2O
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jul 2019 11:38:30 +0000
Received: by mail-qt1-x830.google.com with SMTP id w17so14490173qto.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 08 Jul 2019 04:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=XEGenGrWWbAt1gikbMMjXx59wZlwKCLUtUP/mCFEit0=;
 b=dd2qi+cTQ2HRQBNq9y0s0R0wI9XQae+rlzo6dMfEBkxj3n/odNZyyvOFjcpAmhJD0X
 y+yUcDwgT+19m/6tyHyjeUQmQhEMRh4RsAf1b2oriw1secpgRSPNdseFTYoCGST6O8s7
 mACibE7ZRAbZIG/hfr6nyOPFnkhCv37+Oxh6wBcUVtFJvHmAjqWGPV+gD1hteZhfkDzz
 aBwx3prAkolKShyGHiTPgXgKHkuhZJn2W2hNTceXq2uYE6ltDtRrXzEUyJg3cTsdEzNn
 h4nyIEh60NJWyt9Y1N5Gjxj6p9AtLXS1c5Lu97p1/7owHPLpjB/51ODrKGDixgqxVxa6
 rJuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=XEGenGrWWbAt1gikbMMjXx59wZlwKCLUtUP/mCFEit0=;
 b=VMwRACKc+qlbRoiVRE7EHLTAlfnsrdiVIY8q3q3XEfnvhYKdOEg+ebl960sqSyBhe7
 f9fu4qaAfpeoXZsknmErWOdiGrRVaLFnIL9w1TouD8Qyb1Y8XghunI6NSSWrMM7rcRGx
 5Z/fCLmE05j6JakJnjx1iriwCBERmfaCX5zFxcu7p1KKdM9vscaaKH6H0ZKLdnCJYDOP
 BzO7IsMsrENoiJLqFHRTDE66YSTARZQeBEJ+F9TF0hBLortawTFqT1xl/Zxi1HeDSnwn
 WgycKLvFMztjXIfsVsxFSruC7Y0K2iy7sQj/qwPnYGxdJh8YiuIaYsqPn4X4IYr1TWzN
 4QZA==
X-Gm-Message-State: APjAAAXwHIAAXbnevvu6VuNU9OLcaIyTfoOnSDKQMLn/qt0V4FU+Rsjh
 JY09FRJ937yZOjzEFr5CgNcxG4xgYHUhPivoVIz+umxs
X-Google-Smtp-Source: APXvYqzUD2fG89sB3FH9CR8nXihusnc3vjCT7cmnSEqFDWQZyxN8h2eNi1mfyKnYiQrCiyIN0eyMWW4AjOvP/6Vtr5Y=
X-Received: by 2002:a0c:f909:: with SMTP id v9mr13525585qvn.83.1562585906240; 
 Mon, 08 Jul 2019 04:38:26 -0700 (PDT)
MIME-Version: 1.0
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Mon, 8 Jul 2019 08:38:15 -0300
Message-ID: <CAPxccB0X9Wy4_yfQMwWJ7Ch9zeEvPMvCTNiO7Bnp=GBJikjAqA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_043829_116385_E005712D 
X-CRM114-Status: UNSURE (   4.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:830 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] cherry-pick wolfssl-3.15.7 update to 19.07
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

Q2FuIHNvbWVvbmUgcGxlYXNlIGNoZXJyeS1waWNrIHRoaXMgdG8gMTkuMDc6CjI3OTJkYWFiNWEg
d29sZnNzbDogdXBkYXRlIHRvIDMuMTUuNywgZml4IE1ha2VmaWxlCgpUaGlzIGluY2x1ZGVzIGEg
Zml4IGZvciBhIG1lZGl1bS1sZXZlbCBwb3RlbnRpYWwgY2FjaGUgYXR0YWNrIHdpdGggYQp2YXJp
YW50IG9mIEJsZWljaGVuYmFjaGVy4oCZcyBhdHRhY2suICBQYXRjaGVzIHdlcmUgcmVmcmVzaGVk
LgpJbmNyZWFzZWQgRlBfTUFYX0JJVFMgdG8gYWxsb3cgNDA5Ni1iaXQgUlNBIGtleXMuCkZpeGVk
IHBvbHkxMzA1IGJ1aWxkIG9wdGlvbiwgYW5kIHNvbWUgTWFrZWZpbGUgdXBkYXRlcy4KClNpZ25l
ZC1vZmYtYnk6IEVuZWFzIFUgZGUgUXVlaXJveiA8Y290ZXF1ZWlyb3pAZ21haWwuY29tPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
