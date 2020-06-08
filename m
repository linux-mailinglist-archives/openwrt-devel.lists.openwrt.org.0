Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C311F21EA
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 00:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S1li/Jk+1+NgkGtCt001LIuJ33+D/ZKbyugIlYZM9kY=; b=YcAp24IWcwamwioQGf7i3J7eaR
	vPTqK7RQBPnhR+r49BQaD2B1vrKE048k4Lfx9yvViJ3294BqhTTpVIaFb558UmZohsGtI9buRU92s
	m/E7iuUigToqs/2NbQZ8cmY7423uud05xPGwg2+OIfqxa35axS/Ch03afokAcx8FCpnP0rPhNwEVp
	ZjT0+d6t6PuEWzIeXo2WlQvZF66VE4otGipLyqXe8JAkOhN8796UD1uIpbPZW0kHMSgEYRIEYfO5/
	VSfC3Vlv5i+devfMaIb4bmTRp3eOmI6QRoiYGVYbiC6i86ashGlI2eSjVwR1/YnGT/1DjnGNBIG3B
	Ad/P6F7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQPn-00060H-K0; Mon, 08 Jun 2020 22:38:47 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQPg-0005zB-9D
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 22:38:41 +0000
Received: by mail-lj1-x22d.google.com with SMTP id x18so6100163lji.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 08 Jun 2020 15:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=FxMd66ZKSzXMR/4CWCvYiC0xYhQxEkP5+JDcYpdg954=;
 b=p8R7X6yuCMWUrRIxHKls8II/NvZL4YM6MgOClmpsbyhNmQiM6nODGigQkvCnxCVr/I
 ESk/765k9EOKdrETjbjQXnAQpmQzmh5TqvLr7NfSY+oVm/a4UH2zr9BlKmGp/scjQkus
 5aMoN49Yq7nYrg81C2aMk/dL2yvE2i6isVGXowAIsQjZ7Dj/8hUHmXVVIuVrnE4BkZd8
 cjNwezs9NWZOdnulmvp4198SvnQh97QTTNopSOpQoXoBSAnwu87bBILRqM1RkVWcJWsj
 phcZaUj3K+KK22QhQx0+fCJiRIR6R3P8twtNPbfi7omHsTGCoAMsU5+U/+As3fCX7T6C
 paTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=FxMd66ZKSzXMR/4CWCvYiC0xYhQxEkP5+JDcYpdg954=;
 b=as1bZCwc0pQac0Nsmp7L+rZaatRLUeU+oVbYnnk/J4t3TnXrMWoQKTW5vMhqzgWpQ4
 PmrBx8Ik+w0hZ9XK+qXsFXOuZB+azEVY3WiubjF7NZBv4DGr9WDpQ6JS/T1DwNxC7wKN
 7ZqAi27PCmY5PEGpYIuqj18/81hYemMPIZ+385n50QL232o/gmWstNrIlpKVltVkbWVF
 oFtVJKtZ+uVmVhrsRvbOIkFLpejOmps/5U84WPZL3IAPf78HOHFXwKPGkeNpTvsJ8JGr
 lFfDgXn18wTSe/HW2Krc5spcPRExq44iuQozOSA3AktPcbBQH1ObkbI1LEPc8sdArNjC
 hOzw==
X-Gm-Message-State: AOAM531usAeFGmGZ8QQwbdToWd3PCzJ0Omte59YDlghBLN0sm6lmnzWy
 UyR7DhYqTuR0/fpKHpBzDFY=
X-Google-Smtp-Source: ABdhPJwsFS65u5uynMdFyEKMT8f7HgfH7G5FZmXnwWJXTke8a646SRnJCv6Am5QS8T+AKLS/VoNi+Q==
X-Received: by 2002:a2e:5415:: with SMTP id i21mr12550659ljb.233.1591655915665; 
 Mon, 08 Jun 2020 15:38:35 -0700 (PDT)
Received: from [192.168.1.146] ([46.98.213.158])
 by smtp.gmail.com with ESMTPSA id b5sm4651758lfj.57.2020.06.08.15.38.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 15:38:34 -0700 (PDT)
From: Sergey Ponomarev <stokito@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <2ead7db7-b2f0-d3b7-1e63-17b120c32087@gmail.com>
Date: Tue, 9 Jun 2020 01:38:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_153840_339995_543D5D7B 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [stokito[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] uhttpd: serve precompressed files
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
Cc: Andrej Krpic <ak77@tnode.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rm9sbG93IHVwIG9uIHRoaXMgcGF0Y2g6CgoxLiBUaGUgcGF0Y2ggaXQgd2FzIHRlc3RlZCBhbmQg
YWNjZXB0ZWQgaW50byBBcmVkbk1lc2gub3JnIAo8aHR0cHM6Ly93d3cuYXJlZG5tZXNoLm9yZy8+
IGJlY2F1c2UgdGhleSB3b3JrcyB3aXRoIGRpc3RhbnQgbmV0d29ya3MgCmh0dHBzOi8vZ2l0aHVi
LmNvbS9hcmVkbi9hcmVkbl9hcjcxeHgvcHVsbC8yNzYuCgpUaGUgc2FtZSBwcm9ibGVtIGlzIGFj
dHVhbCBmb3IgYSByZWd1bGFyIFdpRmkgbmV0d29ya3MgZS5nLiB0cnlpbmcgdG8gCmxvZ2luIGlu
dG8gTHVjaSB3aGVuIHNvbWV0aGluZyB3cm9uZyB3aXRoIHdpZmkgYW5kIHlvdSB3YW50IHRvIGNo
ZWNrIApjb25uZWN0aXZpdHkuCgpTbyBzcGVha2luZyBhYm91dCBzcGFjZSB2cyBuZXR3b3JrIHRy
YWRlb2ZmIHRoZW4gbmV0d29yayBtYXkgYmUgbW9yZSAKaW1wb3J0YW50LgoKVGhlIHBhdGNoIGxv
b2tzIGZpbmUgYnV0IHdlIGNhbiBhZGQgc3VwcG9ydCBvZiBvdGhlciBicm93c2VyIHN1cHBvcnRl
ZCAKZW5jb2RlcnM6IERFRkxBVEUsIExaNCBhbmQgQnJvdGxpLiBBbHNvIGlmIHdlIHJlcXVlc3Rl
ZCB0aGUgY29tcHJlc3NlZCAKZmlsZSBpdHNlbGYgZS5nLiAvYmFja3VwLnRhci5neiB0aGVuIHVz
ZXIgd2FudHMgdG8gZG93bmxvYWQgdGhlIGFyY2hpdmUgCmFzIGlzIHNvIG5vIG5lZWQgdG8gYWRk
IENvbnRlbnQtRW5jb2RpbmcgaGVhZGVyLgoKMi4gVGhlcmUgaXMgYSBwYXRjaCAidWh0dHBkOiBh
ZGQgc3VwcG9ydCBmb3IgZ3ppcHBlZCBjb250ZW50IGVuY29kaW5nIiAKTWVzc2FnZSBJRCAxNDQz
NzM4MTM0LTU5MjktMi1naXQtc2VuZC1lbWFpbC1hazc3QHRub2RlLmNvbSAKaHR0cHM6Ly9wYXRj
aHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L29wZW53cnQvcGF0Y2gvMTQ0MzczODEzNC01OTI5LTIt
Z2l0LXNlbmQtZW1haWwtYWs3N0B0bm9kZS5jb20vIAp3aGljaCBtYWtlcyBvbiB0aGUgZmx5IGVu
Y29kaW5nLiBCdXQgdGhlIHBhdGNoIGxvb2tzIGxpa2UgZm9yZ290dGVuIGJ1dCAKSSBhZGRlZCBp
dCdzIGF1dGhvciB0byBDQy4KCkkgcmV2aWV3ZWQgaXQncyBjb2RlIGFuZCB0aGUgcGF0Y2ggbG9v
a3MgZ29vZCBhbmQgaXQgY2FuIGJlIGV2ZW4gCnNsaWdodGx5IGltcHJvdmVkIGJ5IHN3aXRjaGlu
ZyBmcm9tIGd6aXAgdG8gcmF3IERFRkxBVEUgaS5lLiBnemlwIAp3aXRob3V0IGhlYWRlciBhbmQg
Y2hlY2tzdW0gc28gbW9yZSBsaWdodHdlaWdodC4KClRvIHN3aXRjaCB0byBkZWZsYXRlIGp1c3Qg
bmVlZCB0byBqdXN0IG5lZ2F0ZSB3aW5kb3dCaXRzIHBhcmFtIG9mIApkZWZsYXRlSW5pdDIgaS5l
LiBpbnN0ZWFkIG9mIGAxNiB8IE1BWF9XQklUU2AgdXNlIGAtKDE2IHwgTUFYX1dCSVRTKWAuCgoK
QW55d2F5IHByZWNvbXByZXNzaW5nIG1ha2VzIHNlbnNlIGlmIHVzZSBCcm90bGkgaW5zdGVhZCBv
ZiBnemlwIGFuZCB0aGlzIAptYXkgc29sdmUgdGhlIHNwYWNlL25ldHdvcmsvY3B1IHRyYWRlb2Zm
LiBJIGNoZWNrZWQgb24gbXkgaG9tZXBhZ2U6CgogwqAyMDQ4MDAgd3d3X2hvbWVwYWdlLnRhcsKg
wqDCoMKgwqDCoCDCoMKgIGkuZS4gdW5jb21wcmVzc2VkIHNpemUKIMKgwqAgNjgxMTQgd3d3X2hv
bWVwYWdlLnRhci5icsKgIMKgwqDCoCBhc3NldHMgcHJlY29tcHJlc3NlZCB3aXRoIGJyb3RsaQog
wqAgNzAyMjAgd3d3X2hvbWVwYWdlLnRhci54esKgwqDCoMKgwqDCoCBhcyBpdCB3aWxsIGJlIGNv
bXByZXNzZWQgaW4gb3BlbndydCBpbWFnZQogwqAgNjgxODAgd3d3X2hvbWVwYWdlLnRhci5ici54
esKgwqAgc28gcHJlY29tcHJlc3NlZCB3aXRoIGJyb3RsaSBhc3NldCAKdGFrZXMgdGhlIHNhbWUg
cGxhY2UgaW4gb3BlbndydCBpbWFnZQoKT2ZmIGNvdXJzZSBzaXplcyBzdGlsbCBtYXkgYmUgYmV0
dGVyIGluIHh6IGJ1dCBhbnl3YXkgaXQgbG9va3MgbGlrZSB3ZSAKY2FuIHNhZmVseSBwcmVjb21w
cmVzcyB0aGUgTHVjaSBhc3NldHMuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
