Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FCA151104
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 21:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=We/LsjuIt+A64aRWPbei6jT2CIHOsMCuWT4MwsHAWA8=; b=NEgwI6ygWLyUJC
	yrZ2aGL3E50qJkROO3aIjm6FB31hoxpqW1hZxhYWfrPDQmoQXR0lzicLQiE9QvPBt9YAWWZbQ389j
	gSiapM8uyByrpDY49OunSnXK/yGx1WF5anXYHJHReW5oFsD5ykSBgx4JZc6HJp07xEj31Ms9FOufu
	qRCgn6kfSdgQF7oNScgc5uq23oYcl6MuRXj6iTwbEF/Wf69ul3oH+oLKn0Rtddx9LMy9fvx1itn51
	pOluP3mCF7opG8rGmqqLLj5mIBynvZPeus+MDHHsjW0B/AHyCcOTw5HOycWcAty+fNw3jHxc60Htn
	RWPPhVLwLrXEcymRircw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyiLZ-00019t-DK; Mon, 03 Feb 2020 20:29:29 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyiLQ-00019Z-Qe
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 20:29:22 +0000
Received: by mail-io1-xd42.google.com with SMTP id m25so18264434ioo.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 03 Feb 2020 12:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UxnYK5casBEd8aDgw5xU6uIZpO7Vc+mPjTO1O7smvJY=;
 b=uWytSGeLciDq2ncg68sRKdsEV3+0SxNnAanOXaUM2DTW902gWJ+Um8YHy4UiiHv7Mt
 MMQtdf8h86RavPVT5CAn3K9mUrKYlEfE5zAIxg0P9EI0ho3CEtJ5vY5zURsu5KHmXlT/
 uyHrcEti0B0Fwqrd4btUmlaaOFi9s8EhDEpNyhCwSMMs6OhVxinpRftt3IzlSAuAULMC
 SPng0OzqhtwaVQnB5pkt5OUJVCeptWqVavs1CDC7+xdoP7it1b9s58BP9e15vepSPary
 /FghdfSRY1wb5s0TX1zYqxRPtYS6gysH5EnYToRC18QonxIAw9qjIPdGTTNM56XXkcro
 EEiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UxnYK5casBEd8aDgw5xU6uIZpO7Vc+mPjTO1O7smvJY=;
 b=Djrp+i9BNlupIlVo/BJQvV8ldKVwOJn/1zcB23yCQnQutJF3Qh09GYf/aOJ3tYRoNY
 iAB9ANTE0KT5kUezBKWR586OxfzGSPAIa0ycdbGObMkT0dAqBpIe4VBQNAaumxhjcyVz
 bVJBValdvv0gWb7Kiqo6V2bASy1RPw99wox2uOTTKNG1CeUasDx02Is2XS2KFDe5mKtg
 gSfyDM4N/QG8hHUhzJkeFn+ryNdrEqjbDx9ZotvORR5DCrLbS9CFGvQd0BoIU3nmCCTJ
 Xltt4nFNXmogzbx0g9Vjn+/6kv7is8C4RM7ZuWx2zSPPpkZKw90uyGi2xERhqwRFM6r5
 YfTA==
X-Gm-Message-State: APjAAAVmqXd6fVTamXj7gtjEhTIR2aHWWJ0VFgYsLETjMku8xnyfBct4
 Ge+56KaYgNs5nwGBFwsljmXGY6l8PB1uYM1evuY=
X-Google-Smtp-Source: APXvYqxMMoctlRxuPCi+0VyE5buQWKEy68ilskf0GGV/u3fpzGVo6uD9+hHeRrkDv895OYaobGeJekklEa3V54yAPcQ=
X-Received: by 2002:a05:6638:1a3:: with SMTP id
 b3mr21396813jaq.84.1580761759365; 
 Mon, 03 Feb 2020 12:29:19 -0800 (PST)
MIME-Version: 1.0
References: <20200203195431.33881551@kosmio.komorska>
 <2b8b084c-95b0-658e-8d57-f328610b4ccc@iki.fi>
In-Reply-To: <2b8b084c-95b0-658e-8d57-f328610b4ccc@iki.fi>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Mon, 3 Feb 2020 15:29:07 -0500
Message-ID: <CAOdf3gq503JRpPVJ3a_f0hER4zzCJwegSrN8D6dOQJRYs-D3qA@mail.gmail.com>
To: Hannu Nyman <hannu.nyman@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_122920_866173_6F3FD1D4 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: WNDR3700 v1/v2: make u-boot env
 partition writable
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
Cc: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gSGFubnUsCgpMZSBsdW4uIDMgZsOpdnIuIDIwMjAgw6AgMTQ6NTksIEhhbm51IE55bWFu
IDxoYW5udS5ueW1hbkBpa2kuZmk+IGEgw6ljcml0IDoKPgo+IE1pY2hhbCBDaWVzbGFraWV3aWN6
IGtpcmpvaXR0aSAzLjIuMjAyMCBrbG8gMjAuNTQ6Cj4gPiBSZW1vdmUgcmVhZC1vbmx5IGZsYWcg
ZnJvbSBVLWJvb3QgZW52aXJvbm1lbnQgcGFydGl0aW9uIGZvciBOZXRnZWFyCj4gPiBXTkRSMzcw
MCB2MSBhbmQgdjIgc28gdS1ib290LWVudnRvb2xzIGNhbiBtb2RpZnkgZGF0YSB0aGVyZS4KPiA+
Cj4KPiBBbnkgcmVhc29uLCB3aHkgeW91IGhhdmUgbGVmdCBvdXQgdGhlIHRoaXJkIHJvdXRlciBp
biB0aGUgc2VyaWVzLCBXTkRSMzgwMD8KPiBJdCBpcyBpZGVudGljYWwgdG8gV05EUjM3MDB2MiBl
eGNlcHQgdGhlIFJBTSBhbW91bnQuIElmIHRoZSB1LWJvb3QtZW52Cj4gcmVhZC1vbmx5IGF0dHJp
YnV0ZSBpcyBtb2RpZmllZCBmb3IgdjEgYW5kIHYyLCBhbHNvIDM4MDAgd291bGQgYmUgbG9naWNh
bCB0bwo+IGZpeCBhdCB0aGUgc2FtZSB0aW1lLgoKSSBzZWUgMSB1c2UgY2FzZSB0aGF0IGlzIG5v
dCByZWFsbHkgY29tbW9uLCBpdCdzIHRoZSBhYmlsaXR5IHRvCmVuYWJsZS9kaXNhYmxlIGZhaWxz
YWZlCgo+Cj4gQnR3LCB3aGF0IGlzIHRoZSBwcmFjdGljYWwgbmVlZCBmb3IgdGhpcyBjaGFuZ2U/
ICBEdXJpbmcgdGhlIGxhc3QgMTAgeWVhcnMKPiB3aXRoIE9wZW5XcnQgd2l0aCB0aGlzIHJvdXRl
ciBJIGhhdmUgbm90IHNlZW4gYW55IG5lZWQgZm9yIG1vZGlmeWluZyB0aGUKPiB1LWJvb3QtZW52
Lgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
