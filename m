Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15E919EC1F
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 16:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I27w35B5d5bebndjhmBgwFLd9VsQ3GDxOzuArtMXr1s=; b=d/PviJmouXf78RFPMGPygFOj1I
	XJz+QTv10gGGZZxoQu1q146ZslBUVCZWUcK7ps0Oz70eIl7lopuluD7FgYnj/LMdQZLnRFXqfNw9s
	5Jok8tcazlQJH3L9cX3Vf3AV+XGV8pwrxJOkSHugax5DsNOrkBgNnzUNOtv5mj0XLkP6wYMNs4jB7
	8TN7toIaXOc7lNJALIioa1FsvrX8ZmcAs0wh5hXPkjm/Vd7UzCfSou5mhBdx9zDMPHfUlzimiIuhW
	szx1kx6PnN/3YXbOIg2hXjNcFWq+rhbqftxgmD8p0WpvVT2HeB/niIF6biDZqa2PC7r3U3rgTSFzr
	pC3vgNDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6ZX-0001ua-0Y; Sun, 05 Apr 2020 14:48:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6ZQ-0001tL-9y
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 14:48:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id z14so5934072wmf.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 07:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=AF+6XDHOBZ0+xR9bvE7SsNW3EokD5O5Mj9mGaLuHLWw=;
 b=M7DuLRiDz07erD02cPWF0vK36rxTf4PzVhzGeXRNKD39oauhvU9FBQLv8lhs21cjiS
 jwQXZGoFdgaUyv/yNgVN8y/ArE0VyX+OHPTtoDQtJ1UjX2ifE0/MNJ3nH8ZWjGpCMxrY
 0aHurUKMUAa8QLbmTHaFn4t52fkEavY/3IcObaJ9foHQvmIN3RLkz4LKE5l11GPro19C
 z9/qaKEPf9pGX4wNZOj/hCn1tuFP/adC08nxcd6rHS8gF1kPhj+j+FeIREWUGUfV4NR5
 559vdzLTwoTqHifaPjr/GodOSxrHxxQCXpg6nHE5QCO010P2mKRrLBp2ZkwQLyxp/f2A
 pcFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=AF+6XDHOBZ0+xR9bvE7SsNW3EokD5O5Mj9mGaLuHLWw=;
 b=iTZYrGeh7TGUs/fl/+Vnn2l7DU+nrVzuKaRg3wKaU2yP+waZy+p4Q4rH+Wceympw+t
 VllfAFsA5X4HQZa8uS6dXIURpQp3MYoFhTG8lOYRZtXFK47lS6JLwRNlNBaFwXG6MziB
 2X8XcMfnK1sMXo2ohxSwowyxoYlsdLGOAe28VMFzAtzVfRY+QiuXv9FlVfABG7OW8mo/
 f9sOkm8Pnfm+7yyBe7hLn2OE9yzHJDu1A+1pAIrcyE31zxi69ZGmDMOF22ZDoiY/lOaR
 N6mfBjDHxotYb0pRlbqQR5K1S8UjNI2RlK1JCE+vqg3DM9inmeClwfx8HKjbOC3O8Xhp
 6dLw==
X-Gm-Message-State: AGi0PubaSzSTGueWbp6i/q1UeKSUCtoHwNrJAVTjtMdC1AXKBRE7Rhn+
 PHIGTo3CZCagrX61Tt5cB5AmQLHWFvszxyqb8+71nKN9duA=
X-Google-Smtp-Source: APiQypIsmJRtF6yf/jnDW8LXVv+ve2hDClpb04Pyj4LlghXo+16DunA3FOkk8jWosiLYl96BwbuWNYYHEXSPSBSDx6A=
X-Received: by 2002:a1c:6285:: with SMTP id
 w127mr19260509wmb.133.1586098093056; 
 Sun, 05 Apr 2020 07:48:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAChtp76S+dj9MHkgFn2xWg84NSoSW4OUZHX4B1EEm2_M9C2epQ@mail.gmail.com>
In-Reply-To: <CAChtp76S+dj9MHkgFn2xWg84NSoSW4OUZHX4B1EEm2_M9C2epQ@mail.gmail.com>
From: Vivek Unune <npcomplete13@gmail.com>
Date: Sun, 5 Apr 2020 10:48:04 -0400
Message-ID: <CAChtp7578QXX8Auf6Ga=rKzW+4AqiK=5f5Yxadpq714ho2OxCw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org, rafal@milecki.pl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_074820_347357_74388ACD 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [npcomplete13[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npcomplete13[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Pin Controller in Northstar
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

T24gVHVlLCBNYXIgMzEsIDIwMjAgYXQgNTo1MSBQTSBWaXZlayBVbnVuZSA8bnBjb21wbGV0ZTEz
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBBbGwgLyBSYWZhxYIsCj4KPiBJJ20gYWJvdXQgdG8g
dXBkYXRlIGRldmljZSB0cmVlIGZvciBMaW5rc3lzIFBhbmFtZXJhIHJvdXRlciAoYWthCj4gRUE5
NTAwKSBzbyB0aGF0IGl0IHVzZXMgcGluIGNvbnRyb2xsZXIgZGVmaW5lZCBpbiBCQ001MzAxWC5k
dHNpIFsxXS4KPiBIb3dldmVyLCB0aGUgbWFpbmxpbmUga2VybmVsJ3MgTm9ydGhzdGFyIHBpbmN0
cmwgZHJpdmVyIGNvZGUKPiAobnMtcGluY3RybC5jcyBbMl0pIGlzIG91dCBvZiBzeW5jIHdpdGgg
dGhlIGRldmljZSB0cmVlLiBBcyB5b3Ugc2VlLAo+IHRoZSBkcml2ZXIgbG9va3MgZm9yIHN5c2Nv
biBub2RlIHdoaWNoIGlzIGFic2VudCBpbiB0aGUgZGV2aWNlIHRyZWUuCj4KPiBXYXMgdGhlcmUg
YSBwYXRjaCBzdWJtaXR0ZWQgdG8gdXBkYXRlIHRoZSBkZXZpY2UgdHJlZSBhbG9uZyB3aXRoIHRo
ZQo+IGRyaXZlcj8gSSBjb3VsZCBvbmx5IGZpbmQgdGhlIHBhdGNoIHdydCB0aGUgZHJpdmVyIFsz
XQo+Cj4gSWYgdGhlIGRldmljZSB0cmVlIHdhcyBpbmRlZWQgdXBkYXRlZCwgd2hpY2ggZ2l0IHJl
cG9zaXRvcnkgc2hvdWxkIEkKPiB1c2UgdG8gcHJlcGFyZSBhbmQgdGVzdCBteSBwYXRjaD8KPgo+
IFRoYW5rcywKPgo+IFZpdmVrCj4KPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xp
bnV4L2Jsb2IvbWFzdGVyL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTUzMDF4LmR0c2kKPiBbMl0gaHR0
cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL2RyaXZlcnMvcGluY3Ry
bC9iY20vcGluY3RybC1ucy5jCj4gWzNdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0
Y2gvMTA3MzU5MzMvCgpBZGRpbmcgUmFmYcWCCgpTbyBJJ3ZlIG1hbmFnZWQgdG8gY29tcGlsZSBh
bmQgaGF2ZSB0aGUgcGluY29udHJvbCB3b3JraW5nIGluIE9wZW5XcnQuCkhvd2V2ZXIsIGluIG9y
ZGVyIHRvIHN1Ym1pdCBteSBwYXRjaCB1cHN0cmVhbSBJIHdpbGwgbmVlZCBjb3JyZWN0IHRyZWUK
dG8gY3JlYXRlIG15IHBhdGNoLgoKUmFmYcWCIC0gY2FuIHlvdSBwb2ludCBtZSBpbiB0aGUgcmln
aHQgZGlyZWN0aW9uPwoKVGhhbmtzLAoKVml2ZWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
