Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF54F4E7FF
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Jun 2019 14:31:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkJsJ3Jsir5s/DykKMsFYqUjLSIRTwfq4QfN10bDtTI=; b=dvighX0wi/7Dw1
	Dq2CV5ERYe73FGCj5Q4sdMWQs28NpCHHbzls6iX+gtPWtDYnCOhKjzTj2ejbIIW2SQTWH7lOWpsCZ
	HmbvKyKuI/cGj/PMbWPVnXcYt9mcYXtiPZ+I4NX4C/2hIpw+pm0JUQY7Hdc3hk6wC7oL6CjtHXyLl
	gMM9i3DNFeGkWhUPPpbxtLk5fAHljPjQsJQayQuxQDWz471ADAVxnye3ElwnKOa0mGAjNxIH6X5GI
	S0iUjU973f2aRElsFQpgnoAytLqKtbVWj7PLIZgbuHFOGtROMDKFZBNk0YesMk3ooCwLqXp1wfM+a
	YOAnsmdpD9SHDYrHePDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heIhA-0003Qn-3x; Fri, 21 Jun 2019 12:31:08 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heIgP-0003Av-Ly
 for openwrt-devel@lists.openwrt.org; Fri, 21 Jun 2019 12:30:23 +0000
Received: by mail-lj1-x243.google.com with SMTP id x25so5815190ljh.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 21 Jun 2019 05:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xgm+iIlD7SmhQ8c1kop6cjhrAC/CP2xU3xaU39Wa7W0=;
 b=QAEs56XKSIRhkUPt2J9cu1V2+fOo6P+ZSnnK2O7BbceGyqrP1Vp4yEJX9ekURgrGPp
 SKn9vGXsCxPJ31AIv+1iadejDjFbrEHQqPBK6npVwhWIspiOSq/mM4z5LFcs8RFu/8w7
 Bozgd92c6Vn1r+YIYNiFis1PyA4Q3QO47uqDqC/FoWKg/5oH+bCClEW24jXpYRQRHy5X
 VtI+gIBidVL0pKVofBTHYoYImP17iu/WZW743WXUsMu4NOUqlWti6vtOVM9XYRCYw1e9
 ON3Yngh6/3/jwMCAtDS7RWPh9hw6bJB0OC3qP59KUpt+ZFwbN/ASurtJkUcRxIeamjHi
 kttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xgm+iIlD7SmhQ8c1kop6cjhrAC/CP2xU3xaU39Wa7W0=;
 b=cUcRidQy4HhTVdi/mvH5AClM0y6CzS8zs2gy+pPs2WOTqjaYz+x7xU0qnndNjyJN4s
 Or+GXf2fIQtr2EQy4gUvCEfuTKN/O2fSsHhdedAzo2z+vwyvJ4xnCSwL15Ufu3XVYFsF
 OPgDlVDpO74QTVSRhiZjKAGBSEmuVrvpMvqLz4PEApSPvtoYCJ9wCjzYtPMhCur7sBQ4
 /irg2pDEWLuCPhMt4CmKiZO6UOr95JWPiEUvY0qNE3NEDwdjvrkIiK0VXXG5MWsvOhmw
 KCc3EvpKVNBftVareYjh+HO3ZP585To7nHdiqxwx3HTOS8PaMBmPVO/x2F8MFx3nJmJ1
 /0PQ==
X-Gm-Message-State: APjAAAUTyti7IJwYOeNcIQVL6HJhgcnoxM3DbDnFbX4DxN64iwtBxt9O
 GMIXy/XDQvMObj9bHXsbIQyRnHZA
X-Google-Smtp-Source: APXvYqwbg/CQoM5SEZP890y8H/FKkLIjmBX+iAQJGWRgLOH3xQhXNDsIlNqM1crkVBTUKKU5RhPB4A==
X-Received: by 2002:a2e:a0d5:: with SMTP id f21mr40441784ljm.69.1561120219632; 
 Fri, 21 Jun 2019 05:30:19 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id l25sm368376lja.76.2019.06.21.05.30.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 05:30:19 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	Jo-Philipp Wich <jow@openwrt.org>
Date: Fri, 21 Jun 2019 14:30:02 +0200
Message-Id: <20190621123002.9404-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190621123002.9404-1-zajec5@gmail.com>
References: <20190621123002.9404-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_053021_749885_D66D7475 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/2] lua: rename package to lua5.1
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyB3aWxsIGFsbG93
IGFkZGluZyBwYWNrYWdlcyBmb3IgbmV3IEx1YSByZWxlYXNlcyBjbGVhbmx5LiBBdCB0aGUKc2Ft
ZSB0aW1lIGl0IGRvZXNuJ3QgYnJlYWsgZXhpc3RpbmcgcGFja2FnZXMgdGhhbmtzIHRvIHRoZSBQ
Uk9WSURFUy4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5w
bD4KLS0tCiBwYWNrYWdlL3V0aWxzL3tsdWEgPT4gbHVhNS4xfS9NYWtlZmlsZSAgICAgICAgfCAz
NiArKysrKysrKysrLS0tLS0tLS0tCiAuLi4vMDAxLWluY2x1ZGUtdmVyc2lvbi1udW1iZXIucGF0
Y2ggICAgICAgICAgfCAgMAogLi4uLzAxMC1sdWEtNS4xLjMtbG51bS1mdWxsLTI2MDMwOC5wYXRj
aCAgICAgIHwgIDAKIC4uLi9wYXRjaGVzLWhvc3QvMDExLWxudW0tdXNlLWRvdWJsZS5wYXRjaCAg
ICB8ICAwCiAuLi4yLWxudW0tZml4LWx0bGUtcmVsYXRpb25hbC1vcGVyYXRvcnMucGF0Y2ggfCAg
MAogLi4uLzAxMy1sbnVtLXN0cnRvdWwtcGFyc2luZy1maXhlcy5wYXRjaCAgICAgIHwgIDAKIC4u
Li9wYXRjaGVzLWhvc3QvMDE1LWxudW0tcHBjLWNvbXBhdC5wYXRjaCAgICB8ICAwCiAuLi4vMDMw
LWFyY2hpbmRlcGVuZGVudC1ieXRlY29kZS5wYXRjaCAgICAgICAgfCAgMAogLi4uL3BhdGNoZXMt
aG9zdC8xMDAtbm9fcmVhZGxpbmUucGF0Y2ggICAgICAgIHwgIDAKIC4uLi9wYXRjaGVzLzAwMS1p
bmNsdWRlLXZlcnNpb24tbnVtYmVyLnBhdGNoICB8ICAwCiAuLi4vMDEwLWx1YS01LjEuMy1sbnVt
LWZ1bGwtMjYwMzA4LnBhdGNoICAgICAgfCAgMAogLi4uL3BhdGNoZXMvMDExLWxudW0tdXNlLWRv
dWJsZS5wYXRjaCAgICAgICAgIHwgIDAKIC4uLjItbG51bS1maXgtbHRsZS1yZWxhdGlvbmFsLW9w
ZXJhdG9ycy5wYXRjaCB8ICAwCiAuLi4vMDEzLWxudW0tc3RydG91bC1wYXJzaW5nLWZpeGVzLnBh
dGNoICAgICAgfCAgMAogLi4uL3BhdGNoZXMvMDE1LWxudW0tcHBjLWNvbXBhdC5wYXRjaCAgICAg
ICAgIHwgIDAKIC4uLi9wYXRjaGVzLzAyMC1zaGFyZWRfbGlibHVhLnBhdGNoICAgICAgICAgICB8
ICAwCiAuLi4vMDMwLWFyY2hpbmRlcGVuZGVudC1ieXRlY29kZS5wYXRjaCAgICAgICAgfCAgMAog
Li4uL3BhdGNoZXMvMDQwLXVzZS1zeW1ib2xpYy1mdW5jdGlvbnMucGF0Y2ggIHwgIDAKIC4uLi9w
YXRjaGVzLzA1MC1ob25vci1jZmxhZ3MucGF0Y2ggICAgICAgICAgICB8ICAwCiAuLi4vcGF0Y2hl
cy8xMDAtbm9fcmVhZGxpbmUucGF0Y2ggICAgICAgICAgICAgfCAgMAogLi4uL3BhdGNoZXMvMjAw
LWx1YS1wYXRoLnBhdGNoICAgICAgICAgICAgICAgIHwgIDAKIC4uLi9wYXRjaGVzLzMwMC1vcGNv
ZGVfcGVyZm9ybWFuY2UucGF0Y2ggICAgICB8ICAwCiAyMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNl
cnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKIHJlbmFtZSBwYWNrYWdlL3V0aWxzL3tsdWEgPT4g
bHVhNS4xfS9NYWtlZmlsZSAoODclKQogcmVuYW1lIHBhY2thZ2UvdXRpbHMve2x1YSA9PiBsdWE1
LjF9L3BhdGNoZXMtaG9zdC8wMDEtaW5jbHVkZS12ZXJzaW9uLW51bWJlci5wYXRjaCAoMTAwJSkK
IHJlbmFtZSBwYWNrYWdlL3V0aWxzL3tsdWEgPT4gbHVhNS4xfS9wYXRjaGVzLWhvc3QvMDEwLWx1
YS01LjEuMy1sbnVtLWZ1bGwtMjYwMzA4LnBhdGNoICgxMDAlKQogcmVuYW1lIHBhY2thZ2UvdXRp
bHMve2x1YSA9PiBsdWE1LjF9L3BhdGNoZXMtaG9zdC8wMTEtbG51bS11c2UtZG91YmxlLnBhdGNo
ICgxMDAlKQogcmVuYW1lIHBhY2thZ2UvdXRpbHMve2x1YSA9PiBsdWE1LjF9L3BhdGNoZXMtaG9z
dC8wMTItbG51bS1maXgtbHRsZS1yZWxhdGlvbmFsLW9wZXJhdG9ycy5wYXRjaCAoMTAwJSkKIHJl
bmFtZSBwYWNrYWdlL3V0aWxzL3tsdWEgPT4gbHVhNS4xfS9wYXRjaGVzLWhvc3QvMDEzLWxudW0t
c3RydG91bC1wYXJzaW5nLWZpeGVzLnBhdGNoICgxMDAlKQogcmVuYW1lIHBhY2thZ2UvdXRpbHMv
e2x1YSA9PiBsdWE1LjF9L3BhdGNoZXMtaG9zdC8wMTUtbG51bS1wcGMtY29tcGF0LnBhdGNoICgx
MDAlKQogcmVuYW1lIHBhY2thZ2UvdXRpbHMve2x1YSA9PiBsdWE1LjF9L3BhdGNoZXMtaG9zdC8w
MzAtYXJjaGluZGVwZW5kZW50LWJ5dGVjb2RlLnBhdGNoICgxMDAlKQogcmVuYW1lIHBhY2thZ2Uv
dXRpbHMve2x1YSA9PiBsdWE1LjF9L3BhdGNoZXMtaG9zdC8xMDAtbm9fcmVhZGxpbmUucGF0Y2gg
KDEwMCUpCiByZW5hbWUgcGFja2FnZS91dGlscy97bHVhID0+IGx1YTUuMX0vcGF0Y2hlcy8wMDEt
aW5jbHVkZS12ZXJzaW9uLW51bWJlci5wYXRjaCAoMTAwJSkKIHJlbmFtZSBwYWNrYWdlL3V0aWxz
L3tsdWEgPT4gbHVhNS4xfS9wYXRjaGVzLzAxMC1sdWEtNS4xLjMtbG51bS1mdWxsLTI2MDMwOC5w
YXRjaCAoMTAwJSkKIHJlbmFtZSBwYWNrYWdlL3V0aWxzL3tsdWEgPT4gbHVhNS4xfS9wYXRjaGVz
LzAxMS1sbnVtLXVzZS1kb3VibGUucGF0Y2ggKDEwMCUpCiByZW5hbWUgcGFja2FnZS91dGlscy97
bHVhID0+IGx1YTUuMX0vcGF0Y2hlcy8wMTItbG51bS1maXgtbHRsZS1yZWxhdGlvbmFsLW9wZXJh
dG9ycy5wYXRjaCAoMTAwJSkKIHJlbmFtZSBwYWNrYWdlL3V0aWxzL3tsdWEgPT4gbHVhNS4xfS9w
YXRjaGVzLzAxMy1sbnVtLXN0cnRvdWwtcGFyc2luZy1maXhlcy5wYXRjaCAoMTAwJSkKIHJlbmFt
ZSBwYWNrYWdlL3V0aWxzL3tsdWEgPT4gbHVhNS4xfS9wYXRjaGVzLzAxNS1sbnVtLXBwYy1jb21w
YXQucGF0Y2ggKDEwMCUpCiByZW5hbWUgcGFja2FnZS91dGlscy97bHVhID0+IGx1YTUuMX0vcGF0
Y2hlcy8wMjAtc2hhcmVkX2xpYmx1YS5wYXRjaCAoMTAwJSkKIHJlbmFtZSBwYWNrYWdlL3V0aWxz
L3tsdWEgPT4gbHVhNS4xfS9wYXRjaGVzLzAzMC1hcmNoaW5kZXBlbmRlbnQtYnl0ZWNvZGUucGF0
Y2ggKDEwMCUpCiByZW5hbWUgcGFja2FnZS91dGlscy97bHVhID0+IGx1YTUuMX0vcGF0Y2hlcy8w
NDAtdXNlLXN5bWJvbGljLWZ1bmN0aW9ucy5wYXRjaCAoMTAwJSkKIHJlbmFtZSBwYWNrYWdlL3V0
aWxzL3tsdWEgPT4gbHVhNS4xfS9wYXRjaGVzLzA1MC1ob25vci1jZmxhZ3MucGF0Y2ggKDEwMCUp
CiByZW5hbWUgcGFja2FnZS91dGlscy97bHVhID0+IGx1YTUuMX0vcGF0Y2hlcy8xMDAtbm9fcmVh
ZGxpbmUucGF0Y2ggKDEwMCUpCiByZW5hbWUgcGFja2FnZS91dGlscy97bHVhID0+IGx1YTUuMX0v
cGF0Y2hlcy8yMDAtbHVhLXBhdGgucGF0Y2ggKDEwMCUpCiByZW5hbWUgcGFja2FnZS91dGlscy97
bHVhID0+IGx1YTUuMX0vcGF0Y2hlcy8zMDAtb3Bjb2RlX3BlcmZvcm1hbmNlLnBhdGNoICgxMDAl
KQoKZGlmZiAtLWdpdCBhL3BhY2thZ2UvdXRpbHMvbHVhL01ha2VmaWxlIGIvcGFja2FnZS91dGls
cy9sdWE1LjEvTWFrZWZpbGUKc2ltaWxhcml0eSBpbmRleCA4NyUKcmVuYW1lIGZyb20gcGFja2Fn
ZS91dGlscy9sdWEvTWFrZWZpbGUKcmVuYW1lIHRvIHBhY2thZ2UvdXRpbHMvbHVhNS4xL01ha2Vm
aWxlCmluZGV4IGFlNGMwY2IzODUuLjY0NTI1MGU0NDEgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvdXRp
bHMvbHVhL01ha2VmaWxlCisrKyBiL3BhY2thZ2UvdXRpbHMvbHVhNS4xL01ha2VmaWxlCkBAIC00
MCw0OSArNDAsNTIgQEAgZGVmaW5lIFBhY2thZ2UvbHVhL0RlZmF1bHQvZGVzY3JpcHRpb24KICBs
YW5ndWFnZS4gTHVhIGlzIGZyZWUgc29mdHdhcmUuCiBlbmRlZgogCi1kZWZpbmUgUGFja2FnZS9s
aWJsdWEKK2RlZmluZSBQYWNrYWdlL2xpYmx1YTUuMQogJChjYWxsIFBhY2thZ2UvbHVhL0RlZmF1
bHQpCiAgIFNVQk1FTlU6PQogICBTRUNUSU9OOj1saWJzCiAgIENBVEVHT1JZOj1MaWJyYXJpZXMK
ICAgVElUTEUrPSAobGlicmFyaWVzKQorICBQUk9WSURFUzo9bGlibHVhCiAgIEFCSV9WRVJTSU9O
Oj01LjEuNQogZW5kZWYKIAotZGVmaW5lIFBhY2thZ2UvbGlibHVhL2Rlc2NyaXB0aW9uCitkZWZp
bmUgUGFja2FnZS9saWJsdWE1LjEvZGVzY3JpcHRpb24KICQoY2FsbCBQYWNrYWdlL2x1YS9EZWZh
dWx0L2Rlc2NyaXB0aW9uKQogIFRoaXMgcGFja2FnZSBjb250YWlucyB0aGUgTHVhIHNoYXJlZCBs
aWJyYXJpZXMsIG5lZWRlZCBieSBvdGhlciBwcm9ncmFtcy4KIGVuZGVmCiAKLWRlZmluZSBQYWNr
YWdlL2x1YQorZGVmaW5lIFBhY2thZ2UvbHVhNS4xCiAkKGNhbGwgUGFja2FnZS9sdWEvRGVmYXVs
dCkKLSAgREVQRU5EUzo9K2xpYmx1YQorICBERVBFTkRTOj0rbGlibHVhNS4xCiAgIFRJVExFKz0g
KGludGVycHJldGVyKQorICBQUk9WSURFUzo9bHVhCiBlbmRlZgogCi1kZWZpbmUgUGFja2FnZS9s
dWEvZGVzY3JpcHRpb24KK2RlZmluZSBQYWNrYWdlL2x1YS4xL2Rlc2NyaXB0aW9uCiAkKGNhbGwg
UGFja2FnZS9sdWEvRGVmYXVsdC9kZXNjcmlwdGlvbikKICBUaGlzIHBhY2thZ2UgY29udGFpbnMg
dGhlIEx1YSBsYW5ndWFnZSBpbnRlcnByZXRlci4KIGVuZGVmCiAKLWRlZmluZSBQYWNrYWdlL2x1
YWMKK2RlZmluZSBQYWNrYWdlL2x1YWM1LjEKICQoY2FsbCBQYWNrYWdlL2x1YS9EZWZhdWx0KQot
ICBERVBFTkRTOj0rbGlibHVhCisgIERFUEVORFM6PStsaWJsdWE1LjEKICAgVElUTEUrPSAoY29t
cGlsZXIpCisgIFBST1ZJREVTOj1sdWFjCiBlbmRlZgogCi1kZWZpbmUgUGFja2FnZS9sdWFjL2Rl
c2NyaXB0aW9uCitkZWZpbmUgUGFja2FnZS9sdWFjNS4xL2Rlc2NyaXB0aW9uCiAkKGNhbGwgUGFj
a2FnZS9sdWEvRGVmYXVsdC9kZXNjcmlwdGlvbikKICBUaGlzIHBhY2thZ2UgY29udGFpbnMgdGhl
IEx1YSBsYW5ndWFnZSBjb21waWxlci4KIGVuZGVmCiAKLWRlZmluZSBQYWNrYWdlL2x1YS1leGFt
cGxlcworZGVmaW5lIFBhY2thZ2UvbHVhNS4xLWV4YW1wbGVzCiAkKGNhbGwgUGFja2FnZS9sdWEv
RGVmYXVsdCkKLSAgREVQRU5EUzo9bHVhCisgIERFUEVORFM6PWx1YTUuMQogICBUSVRMRSs9IChl
eGFtcGxlcykKIGVuZGVmCiAKLWRlZmluZSBQYWNrYWdlL2x1YS1leGFtcGxlcy9kZXNjcmlwdGlv
bgorZGVmaW5lIFBhY2thZ2UvbHVhNS4xLWV4YW1wbGVzL2Rlc2NyaXB0aW9uCiAkKGNhbGwgUGFj
a2FnZS9sdWEvRGVmYXVsdC9kZXNjcmlwdGlvbikKICBUaGlzIHBhY2thZ2UgY29udGFpbnMgTHVh
IGxhbmd1YWdlIGV4YW1wbGVzLgogZW5kZWYKQEAgLTE2NCwxNSArMTY3LDE0IEBAIGRlZmluZSBQ
YWNrYWdlL2x1YWMvaW5zdGFsbAogCSQoTE4pIGx1YWM1LjEgJCgxKS91c3IvYmluL2x1YWMKIGVu
ZGVmCiAKLWRlZmluZSBQYWNrYWdlL2x1YS1leGFtcGxlcy9pbnN0YWxsCitkZWZpbmUgUGFja2Fn
ZS9sdWE1LjEtZXhhbXBsZXMvaW5zdGFsbAogCSQoSU5TVEFMTF9ESVIpICQoMSkvdXNyL3NoYXJl
L2x1YS9leGFtcGxlcwogCSQoSU5TVEFMTF9EQVRBKSAkKFBLR19CVUlMRF9ESVIpL3Rlc3QvKi5s
dWEgXAogCQkkKDEpL3Vzci9zaGFyZS9sdWEvZXhhbXBsZXMvCiBlbmRlZgogCi0kKGV2YWwgJChj
YWxsIEJ1aWxkUGFja2FnZSxsaWJsdWEpKQotJChldmFsICQoY2FsbCBCdWlsZFBhY2thZ2UsbHVh
KSkKLSQoZXZhbCAkKGNhbGwgQnVpbGRQYWNrYWdlLGx1YWMpKQotJChldmFsICQoY2FsbCBCdWls
ZFBhY2thZ2UsbHVhLWV4YW1wbGVzKSkKKyQoZXZhbCAkKGNhbGwgQnVpbGRQYWNrYWdlLGxpYmx1
YTUuMSkpCiskKGV2YWwgJChjYWxsIEJ1aWxkUGFja2FnZSxsdWE1LjEpKQorJChldmFsICQoY2Fs
bCBCdWlsZFBhY2thZ2UsbHVhYzUuMSkpCiskKGV2YWwgJChjYWxsIEJ1aWxkUGFja2FnZSxsdWE1
LjEtZXhhbXBsZXMpKQogJChldmFsICQoY2FsbCBIb3N0QnVpbGQpKQotCmRpZmYgLS1naXQgYS9w
YWNrYWdlL3V0aWxzL2x1YS9wYXRjaGVzLWhvc3QvMDAxLWluY2x1ZGUtdmVyc2lvbi1udW1iZXIu
cGF0Y2ggYi9wYWNrYWdlL3V0aWxzL2x1YTUuMS9wYXRjaGVzLWhvc3QvMDAxLWluY2x1ZGUtdmVy
c2lvbi1udW1iZXIucGF0Y2gKc2ltaWxhcml0eSBpbmRleCAxMDAlCnJlbmFtZSBmcm9tIHBhY2th
Z2UvdXRpbHMvbHVhL3BhdGNoZXMtaG9zdC8wMDEtaW5jbHVkZS12ZXJzaW9uLW51bWJlci5wYXRj
aApyZW5hbWUgdG8gcGFja2FnZS91dGlscy9sdWE1LjEvcGF0Y2hlcy1ob3N0LzAwMS1pbmNsdWRl
LXZlcnNpb24tbnVtYmVyLnBhdGNoCmRpZmYgLS1naXQgYS9wYWNrYWdlL3V0aWxzL2x1YS9wYXRj
aGVzLWhvc3QvMDEwLWx1YS01LjEuMy1sbnVtLWZ1bGwtMjYwMzA4LnBhdGNoIGIvcGFja2FnZS91
dGlscy9sdWE1LjEvcGF0Y2hlcy1ob3N0LzAxMC1sdWEtNS4xLjMtbG51bS1mdWxsLTI2MDMwOC5w
YXRjaApzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gcGFja2FnZS91dGlscy9sdWEv
cGF0Y2hlcy1ob3N0LzAxMC1sdWEtNS4xLjMtbG51bS1mdWxsLTI2MDMwOC5wYXRjaApyZW5hbWUg
dG8gcGFja2FnZS91dGlscy9sdWE1LjEvcGF0Y2hlcy1ob3N0LzAxMC1sdWEtNS4xLjMtbG51bS1m
dWxsLTI2MDMwOC5wYXRjaApkaWZmIC0tZ2l0IGEvcGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy1o
b3N0LzAxMS1sbnVtLXVzZS1kb3VibGUucGF0Y2ggYi9wYWNrYWdlL3V0aWxzL2x1YTUuMS9wYXRj
aGVzLWhvc3QvMDExLWxudW0tdXNlLWRvdWJsZS5wYXRjaApzaW1pbGFyaXR5IGluZGV4IDEwMCUK
cmVuYW1lIGZyb20gcGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy1ob3N0LzAxMS1sbnVtLXVzZS1k
b3VibGUucGF0Y2gKcmVuYW1lIHRvIHBhY2thZ2UvdXRpbHMvbHVhNS4xL3BhdGNoZXMtaG9zdC8w
MTEtbG51bS11c2UtZG91YmxlLnBhdGNoCmRpZmYgLS1naXQgYS9wYWNrYWdlL3V0aWxzL2x1YS9w
YXRjaGVzLWhvc3QvMDEyLWxudW0tZml4LWx0bGUtcmVsYXRpb25hbC1vcGVyYXRvcnMucGF0Y2gg
Yi9wYWNrYWdlL3V0aWxzL2x1YTUuMS9wYXRjaGVzLWhvc3QvMDEyLWxudW0tZml4LWx0bGUtcmVs
YXRpb25hbC1vcGVyYXRvcnMucGF0Y2gKc2ltaWxhcml0eSBpbmRleCAxMDAlCnJlbmFtZSBmcm9t
IHBhY2thZ2UvdXRpbHMvbHVhL3BhdGNoZXMtaG9zdC8wMTItbG51bS1maXgtbHRsZS1yZWxhdGlv
bmFsLW9wZXJhdG9ycy5wYXRjaApyZW5hbWUgdG8gcGFja2FnZS91dGlscy9sdWE1LjEvcGF0Y2hl
cy1ob3N0LzAxMi1sbnVtLWZpeC1sdGxlLXJlbGF0aW9uYWwtb3BlcmF0b3JzLnBhdGNoCmRpZmYg
LS1naXQgYS9wYWNrYWdlL3V0aWxzL2x1YS9wYXRjaGVzLWhvc3QvMDEzLWxudW0tc3RydG91bC1w
YXJzaW5nLWZpeGVzLnBhdGNoIGIvcGFja2FnZS91dGlscy9sdWE1LjEvcGF0Y2hlcy1ob3N0LzAx
My1sbnVtLXN0cnRvdWwtcGFyc2luZy1maXhlcy5wYXRjaApzaW1pbGFyaXR5IGluZGV4IDEwMCUK
cmVuYW1lIGZyb20gcGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy1ob3N0LzAxMy1sbnVtLXN0cnRv
dWwtcGFyc2luZy1maXhlcy5wYXRjaApyZW5hbWUgdG8gcGFja2FnZS91dGlscy9sdWE1LjEvcGF0
Y2hlcy1ob3N0LzAxMy1sbnVtLXN0cnRvdWwtcGFyc2luZy1maXhlcy5wYXRjaApkaWZmIC0tZ2l0
IGEvcGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy1ob3N0LzAxNS1sbnVtLXBwYy1jb21wYXQucGF0
Y2ggYi9wYWNrYWdlL3V0aWxzL2x1YTUuMS9wYXRjaGVzLWhvc3QvMDE1LWxudW0tcHBjLWNvbXBh
dC5wYXRjaApzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gcGFja2FnZS91dGlscy9s
dWEvcGF0Y2hlcy1ob3N0LzAxNS1sbnVtLXBwYy1jb21wYXQucGF0Y2gKcmVuYW1lIHRvIHBhY2th
Z2UvdXRpbHMvbHVhNS4xL3BhdGNoZXMtaG9zdC8wMTUtbG51bS1wcGMtY29tcGF0LnBhdGNoCmRp
ZmYgLS1naXQgYS9wYWNrYWdlL3V0aWxzL2x1YS9wYXRjaGVzLWhvc3QvMDMwLWFyY2hpbmRlcGVu
ZGVudC1ieXRlY29kZS5wYXRjaCBiL3BhY2thZ2UvdXRpbHMvbHVhNS4xL3BhdGNoZXMtaG9zdC8w
MzAtYXJjaGluZGVwZW5kZW50LWJ5dGVjb2RlLnBhdGNoCnNpbWlsYXJpdHkgaW5kZXggMTAwJQpy
ZW5hbWUgZnJvbSBwYWNrYWdlL3V0aWxzL2x1YS9wYXRjaGVzLWhvc3QvMDMwLWFyY2hpbmRlcGVu
ZGVudC1ieXRlY29kZS5wYXRjaApyZW5hbWUgdG8gcGFja2FnZS91dGlscy9sdWE1LjEvcGF0Y2hl
cy1ob3N0LzAzMC1hcmNoaW5kZXBlbmRlbnQtYnl0ZWNvZGUucGF0Y2gKZGlmZiAtLWdpdCBhL3Bh
Y2thZ2UvdXRpbHMvbHVhL3BhdGNoZXMtaG9zdC8xMDAtbm9fcmVhZGxpbmUucGF0Y2ggYi9wYWNr
YWdlL3V0aWxzL2x1YTUuMS9wYXRjaGVzLWhvc3QvMTAwLW5vX3JlYWRsaW5lLnBhdGNoCnNpbWls
YXJpdHkgaW5kZXggMTAwJQpyZW5hbWUgZnJvbSBwYWNrYWdlL3V0aWxzL2x1YS9wYXRjaGVzLWhv
c3QvMTAwLW5vX3JlYWRsaW5lLnBhdGNoCnJlbmFtZSB0byBwYWNrYWdlL3V0aWxzL2x1YTUuMS9w
YXRjaGVzLWhvc3QvMTAwLW5vX3JlYWRsaW5lLnBhdGNoCmRpZmYgLS1naXQgYS9wYWNrYWdlL3V0
aWxzL2x1YS9wYXRjaGVzLzAwMS1pbmNsdWRlLXZlcnNpb24tbnVtYmVyLnBhdGNoIGIvcGFja2Fn
ZS91dGlscy9sdWE1LjEvcGF0Y2hlcy8wMDEtaW5jbHVkZS12ZXJzaW9uLW51bWJlci5wYXRjaApz
aW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gcGFja2FnZS91dGlscy9sdWEvcGF0Y2hl
cy8wMDEtaW5jbHVkZS12ZXJzaW9uLW51bWJlci5wYXRjaApyZW5hbWUgdG8gcGFja2FnZS91dGls
cy9sdWE1LjEvcGF0Y2hlcy8wMDEtaW5jbHVkZS12ZXJzaW9uLW51bWJlci5wYXRjaApkaWZmIC0t
Z2l0IGEvcGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy8wMTAtbHVhLTUuMS4zLWxudW0tZnVsbC0y
NjAzMDgucGF0Y2ggYi9wYWNrYWdlL3V0aWxzL2x1YTUuMS9wYXRjaGVzLzAxMC1sdWEtNS4xLjMt
bG51bS1mdWxsLTI2MDMwOC5wYXRjaApzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20g
cGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy8wMTAtbHVhLTUuMS4zLWxudW0tZnVsbC0yNjAzMDgu
cGF0Y2gKcmVuYW1lIHRvIHBhY2thZ2UvdXRpbHMvbHVhNS4xL3BhdGNoZXMvMDEwLWx1YS01LjEu
My1sbnVtLWZ1bGwtMjYwMzA4LnBhdGNoCmRpZmYgLS1naXQgYS9wYWNrYWdlL3V0aWxzL2x1YS9w
YXRjaGVzLzAxMS1sbnVtLXVzZS1kb3VibGUucGF0Y2ggYi9wYWNrYWdlL3V0aWxzL2x1YTUuMS9w
YXRjaGVzLzAxMS1sbnVtLXVzZS1kb3VibGUucGF0Y2gKc2ltaWxhcml0eSBpbmRleCAxMDAlCnJl
bmFtZSBmcm9tIHBhY2thZ2UvdXRpbHMvbHVhL3BhdGNoZXMvMDExLWxudW0tdXNlLWRvdWJsZS5w
YXRjaApyZW5hbWUgdG8gcGFja2FnZS91dGlscy9sdWE1LjEvcGF0Y2hlcy8wMTEtbG51bS11c2Ut
ZG91YmxlLnBhdGNoCmRpZmYgLS1naXQgYS9wYWNrYWdlL3V0aWxzL2x1YS9wYXRjaGVzLzAxMi1s
bnVtLWZpeC1sdGxlLXJlbGF0aW9uYWwtb3BlcmF0b3JzLnBhdGNoIGIvcGFja2FnZS91dGlscy9s
dWE1LjEvcGF0Y2hlcy8wMTItbG51bS1maXgtbHRsZS1yZWxhdGlvbmFsLW9wZXJhdG9ycy5wYXRj
aApzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gcGFja2FnZS91dGlscy9sdWEvcGF0
Y2hlcy8wMTItbG51bS1maXgtbHRsZS1yZWxhdGlvbmFsLW9wZXJhdG9ycy5wYXRjaApyZW5hbWUg
dG8gcGFja2FnZS91dGlscy9sdWE1LjEvcGF0Y2hlcy8wMTItbG51bS1maXgtbHRsZS1yZWxhdGlv
bmFsLW9wZXJhdG9ycy5wYXRjaApkaWZmIC0tZ2l0IGEvcGFja2FnZS91dGlscy9sdWEvcGF0Y2hl
cy8wMTMtbG51bS1zdHJ0b3VsLXBhcnNpbmctZml4ZXMucGF0Y2ggYi9wYWNrYWdlL3V0aWxzL2x1
YTUuMS9wYXRjaGVzLzAxMy1sbnVtLXN0cnRvdWwtcGFyc2luZy1maXhlcy5wYXRjaApzaW1pbGFy
aXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gcGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy8wMTMt
bG51bS1zdHJ0b3VsLXBhcnNpbmctZml4ZXMucGF0Y2gKcmVuYW1lIHRvIHBhY2thZ2UvdXRpbHMv
bHVhNS4xL3BhdGNoZXMvMDEzLWxudW0tc3RydG91bC1wYXJzaW5nLWZpeGVzLnBhdGNoCmRpZmYg
LS1naXQgYS9wYWNrYWdlL3V0aWxzL2x1YS9wYXRjaGVzLzAxNS1sbnVtLXBwYy1jb21wYXQucGF0
Y2ggYi9wYWNrYWdlL3V0aWxzL2x1YTUuMS9wYXRjaGVzLzAxNS1sbnVtLXBwYy1jb21wYXQucGF0
Y2gKc2ltaWxhcml0eSBpbmRleCAxMDAlCnJlbmFtZSBmcm9tIHBhY2thZ2UvdXRpbHMvbHVhL3Bh
dGNoZXMvMDE1LWxudW0tcHBjLWNvbXBhdC5wYXRjaApyZW5hbWUgdG8gcGFja2FnZS91dGlscy9s
dWE1LjEvcGF0Y2hlcy8wMTUtbG51bS1wcGMtY29tcGF0LnBhdGNoCmRpZmYgLS1naXQgYS9wYWNr
YWdlL3V0aWxzL2x1YS9wYXRjaGVzLzAyMC1zaGFyZWRfbGlibHVhLnBhdGNoIGIvcGFja2FnZS91
dGlscy9sdWE1LjEvcGF0Y2hlcy8wMjAtc2hhcmVkX2xpYmx1YS5wYXRjaApzaW1pbGFyaXR5IGlu
ZGV4IDEwMCUKcmVuYW1lIGZyb20gcGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy8wMjAtc2hhcmVk
X2xpYmx1YS5wYXRjaApyZW5hbWUgdG8gcGFja2FnZS91dGlscy9sdWE1LjEvcGF0Y2hlcy8wMjAt
c2hhcmVkX2xpYmx1YS5wYXRjaApkaWZmIC0tZ2l0IGEvcGFja2FnZS91dGlscy9sdWEvcGF0Y2hl
cy8wMzAtYXJjaGluZGVwZW5kZW50LWJ5dGVjb2RlLnBhdGNoIGIvcGFja2FnZS91dGlscy9sdWE1
LjEvcGF0Y2hlcy8wMzAtYXJjaGluZGVwZW5kZW50LWJ5dGVjb2RlLnBhdGNoCnNpbWlsYXJpdHkg
aW5kZXggMTAwJQpyZW5hbWUgZnJvbSBwYWNrYWdlL3V0aWxzL2x1YS9wYXRjaGVzLzAzMC1hcmNo
aW5kZXBlbmRlbnQtYnl0ZWNvZGUucGF0Y2gKcmVuYW1lIHRvIHBhY2thZ2UvdXRpbHMvbHVhNS4x
L3BhdGNoZXMvMDMwLWFyY2hpbmRlcGVuZGVudC1ieXRlY29kZS5wYXRjaApkaWZmIC0tZ2l0IGEv
cGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy8wNDAtdXNlLXN5bWJvbGljLWZ1bmN0aW9ucy5wYXRj
aCBiL3BhY2thZ2UvdXRpbHMvbHVhNS4xL3BhdGNoZXMvMDQwLXVzZS1zeW1ib2xpYy1mdW5jdGlv
bnMucGF0Y2gKc2ltaWxhcml0eSBpbmRleCAxMDAlCnJlbmFtZSBmcm9tIHBhY2thZ2UvdXRpbHMv
bHVhL3BhdGNoZXMvMDQwLXVzZS1zeW1ib2xpYy1mdW5jdGlvbnMucGF0Y2gKcmVuYW1lIHRvIHBh
Y2thZ2UvdXRpbHMvbHVhNS4xL3BhdGNoZXMvMDQwLXVzZS1zeW1ib2xpYy1mdW5jdGlvbnMucGF0
Y2gKZGlmZiAtLWdpdCBhL3BhY2thZ2UvdXRpbHMvbHVhL3BhdGNoZXMvMDUwLWhvbm9yLWNmbGFn
cy5wYXRjaCBiL3BhY2thZ2UvdXRpbHMvbHVhNS4xL3BhdGNoZXMvMDUwLWhvbm9yLWNmbGFncy5w
YXRjaApzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gcGFja2FnZS91dGlscy9sdWEv
cGF0Y2hlcy8wNTAtaG9ub3ItY2ZsYWdzLnBhdGNoCnJlbmFtZSB0byBwYWNrYWdlL3V0aWxzL2x1
YTUuMS9wYXRjaGVzLzA1MC1ob25vci1jZmxhZ3MucGF0Y2gKZGlmZiAtLWdpdCBhL3BhY2thZ2Uv
dXRpbHMvbHVhL3BhdGNoZXMvMTAwLW5vX3JlYWRsaW5lLnBhdGNoIGIvcGFja2FnZS91dGlscy9s
dWE1LjEvcGF0Y2hlcy8xMDAtbm9fcmVhZGxpbmUucGF0Y2gKc2ltaWxhcml0eSBpbmRleCAxMDAl
CnJlbmFtZSBmcm9tIHBhY2thZ2UvdXRpbHMvbHVhL3BhdGNoZXMvMTAwLW5vX3JlYWRsaW5lLnBh
dGNoCnJlbmFtZSB0byBwYWNrYWdlL3V0aWxzL2x1YTUuMS9wYXRjaGVzLzEwMC1ub19yZWFkbGlu
ZS5wYXRjaApkaWZmIC0tZ2l0IGEvcGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy8yMDAtbHVhLXBh
dGgucGF0Y2ggYi9wYWNrYWdlL3V0aWxzL2x1YTUuMS9wYXRjaGVzLzIwMC1sdWEtcGF0aC5wYXRj
aApzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gcGFja2FnZS91dGlscy9sdWEvcGF0
Y2hlcy8yMDAtbHVhLXBhdGgucGF0Y2gKcmVuYW1lIHRvIHBhY2thZ2UvdXRpbHMvbHVhNS4xL3Bh
dGNoZXMvMjAwLWx1YS1wYXRoLnBhdGNoCmRpZmYgLS1naXQgYS9wYWNrYWdlL3V0aWxzL2x1YS9w
YXRjaGVzLzMwMC1vcGNvZGVfcGVyZm9ybWFuY2UucGF0Y2ggYi9wYWNrYWdlL3V0aWxzL2x1YTUu
MS9wYXRjaGVzLzMwMC1vcGNvZGVfcGVyZm9ybWFuY2UucGF0Y2gKc2ltaWxhcml0eSBpbmRleCAx
MDAlCnJlbmFtZSBmcm9tIHBhY2thZ2UvdXRpbHMvbHVhL3BhdGNoZXMvMzAwLW9wY29kZV9wZXJm
b3JtYW5jZS5wYXRjaApyZW5hbWUgdG8gcGFja2FnZS91dGlscy9sdWE1LjEvcGF0Y2hlcy8zMDAt
b3Bjb2RlX3BlcmZvcm1hbmNlLnBhdGNoCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
