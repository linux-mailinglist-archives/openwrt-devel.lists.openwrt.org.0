Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E16119F593
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 14:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jc7dwiXczVVnRReifkULZGwWUhkbt1Msmv+ggCJOvhQ=; b=uwesir3rgxdVBv
	LeEDivzieWcIcEqABQn8Y8PPBi+OhKlx65pRzSsLQ+cjSi98bl2vSVHxtIeQ9SuSHIW+51YSsyMcA
	iL6vshhX5l/CWDsB2pVgSoX2yF3BjtVrlCasEQJxTMVMy96Wn4Sn1QO8X5fEsujwMzU0bVrWPZWj0
	NKKppNFwTM5cUZ9O7GFfJXAKvF1Up7R2jLXyCLmDgEE7GGBw3aSRPaDP2QNYFFW4z9xvEqDa949fs
	NZWtJiXl8NdqNdtqyQa14dfSK3n4oGAkNQ9c7GVfe9D8H5fbaH+rZuyW61awx2GKyMfgczRAyI+jt
	1KeRA3OtZZRMiDXqDYPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQYn-0008KW-6f; Mon, 06 Apr 2020 12:09:01 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQYc-0008Jw-CK
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 12:08:51 +0000
Received: by mail-qv1-xf43.google.com with SMTP id bu9so7302979qvb.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 05:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=UtK7bS3RBxos+iXdqe42FLpLYCv6NrZmTdkUNcN8pAk=;
 b=d51Pw3+MThLr87EeCW32F3Bl0X8Dh2aLpvutxkffBQzPpx+6oNlN9Bw6h4bnpKOmjm
 rt3NtZYMrbo2WmZBqBNbTQge6vXfWeVaceGA/EouNmqgndGINV3N1yOTYxWRxwR8z+Kx
 pHzaBFEibPkZimZ237vmsPf668OhQ6hHjZ9Ppq8wnbYqrE1y1d0rxSmhyQenHxiWZ2dF
 3U8ByERE/EKKIGhSECuM8JOqF031StSBBC5r7rBJptme56c8mV8Dz0Hd8fXxdpFoB+8N
 32LGqR7H8pv5/RvxIEPJHFhI2N20vJie2O9FZC9raBkJrNNWHkzY8yTnlBAIONo82lL5
 5gmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=UtK7bS3RBxos+iXdqe42FLpLYCv6NrZmTdkUNcN8pAk=;
 b=OAtQqwmrPPSIrVXGeOAPtnjxf62R8HM5FRpAOdNa3q8H8q/hTCYvfgxiZ/bzCNrFqc
 G5b3nSeeA0M2aJCPxcgdAzoZ5smi8A8JyjwgG9D2b57ARSDRY7Zitl9jhJpBs04KddHb
 At+H6bYoIqQKwJO9tnu5ee3m4cgFcOTwAnAI63s8awMx/gkq1s+PqurrTFWCDQ30bhHA
 XW6JsifAX1/3oghhxR6rzgS2OW1F/nSBlSiJIDFnOFCibszo8orsKXSRNwWumwDEDJtI
 H14RPcYIg+IkGtOWUSEdmPINj+vOC8/nsq6y0cdWHOc6BaSRa9t4fHMLs2SMss+4DGqE
 Oi+w==
X-Gm-Message-State: AGi0PuYu2IMfQ5xeROTkX3SZ7nvApG9EzOKcYbgkSu1ndexOmdjiVseY
 rfU14t0SatpmX//Dq2iOplQCfHd8pEQ=
X-Google-Smtp-Source: APiQypL9zULAuXBdvo4lzZuVXNrrXvMOwv21lItEyqUIq31HQETetPuORt1m9JMwxH7Q0fKskri2+A==
X-Received: by 2002:a0c:9b95:: with SMTP id o21mr20496194qve.175.1586174924271; 
 Mon, 06 Apr 2020 05:08:44 -0700 (PDT)
Received: from ?IPv6:2804:688:21:9::1000:4ea4? ([2804:688:21:9::1000:4ea4])
 by smtp.gmail.com with ESMTPSA id z18sm3925330qkb.30.2020.04.06.05.08.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 05:08:43 -0700 (PDT)
From: =?utf-8?Q?En=C3=A9as_Ulir_de_Queiroz?= <cotequeiroz@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 6 Apr 2020 09:08:40 -0300
Message-Id: <9A802827-5F05-4302-93EB-6937DE346817@gmail.com>
References: <20200406115319.43682-1-mail@aparcar.org>
In-Reply-To: <20200406115319.43682-1-mail@aparcar.org>
To: Paul Spooren <mail@aparcar.org>
X-Mailer: iPhone Mail (17D50)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_050850_444052_C911E90B 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] scripts/download: add sources CDN as
 first mirror
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

QWNrZWQtYnk6IEVuZWFzIFUgZGUgUXVlaXJveiA8Y290ZXF1ZWlyb3pAZ21haWwuY29tPgoKPiBF
bSA2IGRlIGFiciBkZSAyMDIwLCDDoChzKSAwODo1MywgUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJj
YXIub3JnPiBlc2NyZXZldToKPiAKPiDvu79PcGVuV3J0IG5vdyBoYXMgYSBDRE4gZm9yIHNvdXJj
ZXMgYXQgc291cmNlcy5jZG4ub3BlbndydC5vcmcgd2hpY2gKPiBtaXJyb3JzIHNvdXJjZXMub3Bl
bndydC5vcmcuCj4gCj4gRG93bmxvYWRpbmcgc291cmNlcyBvdXRzaWRlIEV1cm9wZSBvciBVUyAo
bWFpbmxhbmQpIGNvdWxkCj4gcmVzdWx0IGluIGxvdyB0aHJvdWdocHV0LCBleHRyZW1lbHkgc2xv
d2luZyBkb3duIHRoZSBmaXJzdCBjb21waWxhdGlvbiBvZgo+IHRoZSBidWlsZCBzeXN0ZW0uCj4g
Cj4gVGhpcyBwYXRjaCBhZGRzIHNvdXJjZXMuY2RuLm9wZW53cnQub3JnIGFzIHRoZSBmaXJzdCBt
aXJyb3IgdG8gb2ZmZXIKPiB3b3JsZHdpZGUgZmFzdCBkb3dubG9hZCBzcGVlZHMgYnkgZGVmYXVs
dC4gSWYgdGhlIENETiBnb2VzIGRvd24gZm9yCj4gd2hhdGV2ZXIgcmVhc29uLCB0aGUgc2NyaXB0
IGp1bXBzIHRvIHRoZSBuZXh0IGF2YWlsYWJsZSBtaXJyb3IgYW5kCj4gZG93bmxvYWRzIHJlcXVl
c3RlZCBmaWxlcyBhcyBiZWZvcmUgKGluIHJlZ2lvbmFsIHZhcnlpbmcgc3BlZWQpLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFBhdWwgU3Bvb3JlbiA8bWFpbEBhcGFyY2FyLm9yZz4KPiAtLS0KPiBzY3Jp
cHRzL2Rvd25sb2FkLnBsIHwgMSArCj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL3NjcmlwdHMvZG93bmxvYWQucGwgYi9zY3JpcHRzL2Rvd25sb2FkLnBs
Cj4gaW5kZXggZGQ0OTI1NTM2Ny4uMWQzZmYwMmM1YiAxMDA3NTUKPiAtLS0gYS9zY3JpcHRzL2Rv
d25sb2FkLnBsCj4gKysrIGIvc2NyaXB0cy9kb3dubG9hZC5wbAo+IEBAIC0yNTgsNiArMjU4LDcg
QEAgZm9yZWFjaCBteSAkbWlycm9yIChAQVJHVikgewo+ICAgIH0KPiB9Cj4gCj4gK3Vuc2hpZnQg
QG1pcnJvcnMsICdodHRwczovL3NvdXJjZXMuY2RuLm9wZW53cnQub3JnJzsKPiAjcHVzaCBAbWly
cm9ycywgJ2h0dHBzOi8vbWlycm9yMS5vcGVud3J0Lm9yZyc7Cj4gcHVzaCBAbWlycm9ycywgJ2h0
dHBzOi8vc291cmNlcy5vcGVud3J0Lm9yZyc7Cj4gcHVzaCBAbWlycm9ycywgJ2h0dHBzOi8vbWly
cm9yMi5vcGVud3J0Lm9yZy9zb3VyY2VzJzsKPiAtLSAKPiAyLjI1LjEKPiAKPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
