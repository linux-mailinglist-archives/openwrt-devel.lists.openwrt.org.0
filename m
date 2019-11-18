Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E251FFD2D
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 03:46:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ULR1AOEEiLOaLtQ5Iyv5she5R9/QiinMNdEfSXDBBY4=; b=dIBBklsPFvVF1d28N1oXvqnN6
	rlOhgVjHty3Ad+HCkccDiZ4Kqj9VoXJPAhCCsegOb+DvOqUQR3ooEZT72S5IOD+Cv5n7i+2KC6+G2
	Q8JkeY71RRWSmbRMNUlIf0RwrlFWIc3QuZu7UWMIMG5TeOTfi69jwGeivOgXJZNQMuv/reLvKBz7i
	KTs5zGnC8ge3lulv0RNeKsz1hPvKlWx4C3hLRYEBjZeUZKtNQ0cfhYkCqatBahkT7Z5WL3yisLEhO
	p9KcN7REPnWYpNF6AQ5K49YFd2VdSPImlqbUnDrc2xxevWtQp2jFP490+u2VphK+YZx1UH0ruybA+
	k6R86D3RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWX3O-0001Rh-Nz; Mon, 18 Nov 2019 02:46:14 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWX3F-0001QM-Sk
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 02:46:09 +0000
Received: by mail-qt1-x844.google.com with SMTP id o3so18556175qtj.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 Nov 2019 18:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=wmrBlrJYqUL9Up4LmRLqtFwZpZL3DmCYu9ibqQiJMAY=;
 b=ZLYnOxPsFCBZ7jdoGTiHW1LlqmYolqu3YYUkWQ6KrSBlxA6xHEawdxHQA5pKOfT7cm
 lpNqAIg85uy7MAHTNnf/rt7uAa48RcWTaX9+DQtZSuVfkLD7DUby562xGenjByR1YSWa
 qBFM/5ECYGR5zD0jCEfRbw9rCNLL98lwDU/UgUa4AbAFy499RQqUSqKg3Qws+U+QbtrQ
 nZnE9+pzJznuhps42cnAVrBbzE/e9GauvaG/AhpNW//ysNUw1GU/GU+4mhKKsa4e4ZEM
 s/bQKFEhwk0UGogKhN8kRvD8DfXHvDr5BjL495cCpErTqXSofdH7Z2K7y7iivS9TPmQ/
 QnoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=wmrBlrJYqUL9Up4LmRLqtFwZpZL3DmCYu9ibqQiJMAY=;
 b=jnqLau+Gcr+oNH1bCbAwPCQ5IAaNOXDJo32H1nLBOMDo0glpG7+1Y5cdg4b8Alp4hC
 i9uxvmQRHGURJiqQk/rUbwiNtr+aF9Uvxc90zDoV2at7KR82fB9xUM/z5kEXAgwblO3i
 N6TI0HD45X5YiFowUw3xCZGslHiEcjoDXEB6HdcF+ITeoCw39bnm4CxD9Oqtxhk9owjz
 efE8S5gZCsdlO/dJ7pIEm9oXKlSOj66JYeIOfDvqpwvwX+0C/FcK1LuuGyOlodIbC2Lo
 lYwpl32uqdpClRHaT4ffu3e7A+qP/69Up0rXfbrMrr/PWYtYX1IAcScOOTvMVYwIkHoI
 ZTPQ==
X-Gm-Message-State: APjAAAW6/FZVJtxKuS4D75zNl9tDU8ml25N71rC9Dng42IYCGuXd37N2
 AVzqE0U8DPYcrKbENNXf1ZSr4OmBBNg=
X-Google-Smtp-Source: APXvYqzS3DyyPTA5coo4N/rrIaPoAxGBf3+HXVu/40e8612QncUpZ21/LQPzwlqUwZ2L42JM9v5BCA==
X-Received: by 2002:ac8:1871:: with SMTP id n46mr25635286qtk.240.1574045163388; 
 Sun, 17 Nov 2019 18:46:03 -0800 (PST)
Received: from [192.168.8.111] ([184.75.223.211])
 by smtp.gmail.com with ESMTPSA id k65sm9293556qtd.14.2019.11.17.18.46.02
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 17 Nov 2019 18:46:03 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <20191117225937.5599-1-hauke@hauke-m.de>
 <CAOdf3goesxPQrRy8eeu0ZV1RpOcLaUXyc9iWLyPyrejBXOo3cg@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <99f44214-145a-ce48-080a-675d81061055@gmail.com>
Date: Mon, 18 Nov 2019 10:45:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAOdf3goesxPQrRy8eeu0ZV1RpOcLaUXyc9iWLyPyrejBXOo3cg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_184605_952981_102A71DD 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] wireless-regdb: Make it build with
 python2
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDE4LzExLzE5IDA4OjQyLCBFdGllbm5lIENoYW1wZXRpZXIgd3JvdGU6Cj4gSGkgSGF1a2Us
Cj4KPiBMZSBkaW0uIDE3IG5vdi4gMjAxOSDDoCAxNTowMCwgSGF1a2UgTWVocnRlbnMgPGhhdWtl
QGhhdWtlLW0uZGU+IGEgw6ljcml0IDoKPj4gVGhpcyBiYWNrcG9ydHMgYSBwYXRjaCB0byBidWls
ZCBpdCB3b3JrIHdpdGggcHl0aG9uMiBpbiBhZGRpdGlvbiB0bwo+PiBweXRob24zLgo+IFdoeSBu
b3QgbWFrZSB0aGUgc2NyaXB0cyAiL3Vzci9iaW4vZW52IHB5dGhvbjMiIGFuZCByZXF1aXJlIHB5
dGhvbiAzIGluIDE5LjA3ID8KPiAoSSdtIHN0dWJvcm4gYnV0IEkgZG9uJ3QgdW5kZXJzdGFuZCB0
cnlpbmcgdG8ga2VlcCBweXRob24yIGFsaXZlIG9yCj4gdXNpbmcgdW52ZXJzaW9ubmVkIHB5dGhv
bikKPgo+IENoZWVycwo+IEV0aWVubmUKCkkgcmVhZCBzb21lIGRpc2N1c3Npb24gYWJvdXQgdGhp
cyBvbiBhIEdpdGh1YiBQUi4KCk90aGVyIHNjcmlwdHMgdGhhdCB3ZXJlIHBvcnRlZCB0byBweXRo
b24zIGhhZCBpc3N1ZXMgd2l0aCBweXRob24zIGxhdGVyIAphbmQgaGFkIHRvIGJlIGZpeGVkLgoK
VGhleSBkZWNpZGVkIHRoYXQgc3dpdGNoaW5nIGFsbCBweXRob24gc2NyaXB0cyB0byBweXRob24z
IGluIDE5LjA3IApyZWxlYXNlIHdhcyB0b28gcmlza3ksCgplc3BlY2lhbGx5IGJlY2F1c2UgaXQg
aXMgbGF0ZSBhbHJlYWR5IHNvIHRoZXkgYXJlIGp1c3QgbWFraW5nIHN1cmUgdGhleSAKYXJlIHJ1
biB3aXRoIHB5dGhvbjIuCgpTY3JpcHRzIGluIG1hc3RlciBhcmUgbWlncmF0ZWQgdG8gcHl0aG9u
MyBhbmQgd2lsbCBoYXZlIGEgbG90IG9mIHRpbWUgdG8gCmZpbmQgYnVncyBhbmQgYmUgZml4ZWQg
YmVmb3JlCgpuZXh0IHN0YWJsZSByZWxlYXNlLgoKCi1BbGJlcnRvCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
