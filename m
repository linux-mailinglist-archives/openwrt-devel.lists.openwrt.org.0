Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 211E5127050
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:05:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCDr8ccHYOO1Nt7aFvtgeBTqhUDxwmCgygG6DayExlk=; b=TDQaJEcpjkbp40
	KqIqXfQtDv8iuvoTV3/LHzOL1wbVvVaUV1mo5uJnK2cIaK1SMpsft3HnjC+LPHt7xSCUhkPCP6imH
	OQbdVqueehVQlJfUEG0aggM1meW/qkINB3YAlJ2OKnaY194eIqSJyEZ+QztwzmWC8O918QwQMPOR4
	/b1XYBGMwk6rdmGxHPS03e1uz59a2x8mDEpmQRma3CNEKKYeiGGz4KQqAeMXM3T8lAXrHUPB1b6F3
	BtC9jD/wNwBntdd6AHGHHT6KjCGhaLgm7zn7Pg8fx49jmfoZy+FnI33bEgSPDQIaxNRoQt1OluMYo
	bEFbU+t79GgEBSb6lnlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3vN-0006Xv-8L; Thu, 19 Dec 2019 22:05:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3uI-0003an-LW
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:04:34 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EC4814B91;
 Thu, 19 Dec 2019 23:04:28 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 82b2e697;
 Thu, 19 Dec 2019 23:04:18 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:04:14 +0100
Message-Id: <20191219220421.22206-3-ynezz@true.cz>
In-Reply-To: <20191219220421.22206-1-ynezz@true.cz>
References: <20191219220421.22206-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_140430_897931_C46B641D 
X-CRM114-Status: UNSURE (   7.94  )
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
Subject: [OpenWrt-Devel] [PATCH ucert 2/9] add initial GitLab CI support
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

VXNlcyBjdXJyZW50bHkgcHJvb2Ytb2YtY29uY2VwdCBvcGVud3J0LWNpWzFdIGluIG9yZGVyIHRv
OgoKICogaW1wcm92ZSB0aGUgcXVhbGl0eSBvZiB0aGUgY29kZWJhc2UgaW4gdmFyaW91cyBhcmVh
cwogKiBkZWNyZWFzZSBjb2RlIHJldmlldyB0aW1lIGFuZCBoZWxwIG1lcmdpbmcgY29udHJpYnV0
aW9ucyBmYXN0ZXIKICogZ2V0IGF1dG9tYWdpYyBmZWVkYmFjayBsb29wIG9uIHZhcmlvdXMgcGxh
dGZvcm1zIGFuZCB0b29scwogICAtIG91dCBvZiB0cmVlIGJ1aWxkIHdpdGggT3BlbldydCBTREsg
b24gZm9sbG93aW5nIHRhcmdldHM6CiAgICAgKiBhdGg3OS1nZW5lcmljCiAgICAgKiBpbXg2LWdl
bmVyaWMKICAgICAqIG1hbHRhLWJlCiAgICAgKiBtdmVidS1jb3J0ZXhhNTMKICAgLSBvdXQgb2Yg
dHJlZSBuYXRpdmUgYnVpbGQgb24geDg2LzY0IHdpdGggR0NDICh2ZXJzaW9ucyA3LCA4LCA5KSBh
bmQgQ2xhbmcgMTAKICAgLSBvdXQgb2YgdHJlZSBuYXRpdmUgeDg2LzY0IHN0YXRpYyBjb2RlIGFu
YWx5c2lzIHdpdGggY3BwY2hlY2sgYW5kCiAgICAgc2Nhbi1idWlsZCBmcm9tIENsYW5nIDEwCgox
LiBodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC1jaS8KClNpZ25lZC1vZmYtYnk6IFBl
dHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogLmdpdGxhYi1jaS55bWwgfCA2ICsrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IC5n
aXRsYWItY2kueW1sCgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnlt
bApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjk0ZjY1ZTcxYjExMQot
LS0gL2Rldi9udWxsCisrKyBiLy5naXRsYWItY2kueW1sCkBAIC0wLDAgKzEsNiBAQAordmFyaWFi
bGVzOgorICBDSV9UQVJHRVRfQlVJTERfREVQRU5EUzogdWNlcnQKKworaW5jbHVkZToKKyAgLSBy
ZW1vdGU6IGh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0LWNpL3Jhdy9tYXN0ZXIvb3Bl
bndydC1jaS9naXRsYWIvbWFpbi55bWwKKyAgLSByZW1vdGU6IGh0dHBzOi8vZ2l0bGFiLmNvbS95
bmV6ei9vcGVud3J0LWNpL3Jhdy9tYXN0ZXIvb3BlbndydC1jaS9naXRsYWIvcGlwZWxpbmUueW1s
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
