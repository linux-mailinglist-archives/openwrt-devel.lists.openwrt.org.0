Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9641F1008
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 23:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oE7P2VSBMboPeT/cOT5uMnzZpq44KO2xuOCzmzvONQ=; b=Yvh+48Q43194ul
	u27B+wAssemC4gTEazGCFwhXjrMvkiDInHpL7ksyh57gQZhqGJ41IpWcoE+SXZ3SOMXWd0PyBomZO
	fJdYqwX1RPC/55Kg20t6b8+b0sp/RpnoWnZvwZH3MGOni7hT5wKgdIalQYHkELF5LS9dQHaF9ZWCa
	Ju5fNZH8/G9U38uOduJlJ8bOn3Fq5BEn1YeOuUCunvop2sk61CrAiU9tSXQlQnKMbXU/MJAkXpiud
	fMV69imMlQY0x4F8o03qu7NFXHzIP0OMQruMVuwDeOQuL2yBTGDWgbz34tRTENa45wGg14XQplWRG
	Fn8OdHYpaAeos5ArLyOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji30j-00042Z-1B; Sun, 07 Jun 2020 21:39:21 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji30c-00041J-RX
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 21:39:16 +0000
Received: by mail-pj1-x1035.google.com with SMTP id s88so5153064pjb.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 07 Jun 2020 14:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=d8ZfoDtm1dnBxakpaxWSGl/P4D09reVrsqJJPTK3o5Y=;
 b=vBR+NvJ7B5/ooZS9BjAPNOpQr0StHlFGgu2wTUAgiHSKe6ArqiTHKGGAxIJeANw18J
 L7BHhs7+7I4r3j8UlitqmEJYGSAjx/qGHXIXyUCSEYKkpWsjqT5r75Q6iHgZEJw8H7YZ
 bwyyL2L3K0O1wfuYpOdME5XvwXURrSBDYHK4OKayo6DwSaz/io2tM4i8nVvMO/Qol6bF
 DKrTg6OQT9QouktltIdmn/Jd0FYX29yRycmZUDlKsX9Mk7/XxlyUs53fK0XKahuQGc97
 zNWlaFdoBC3IMgN4LtKALogE+PlvPMy2XnAGQ8XPWIf3Fq4jNh+0HIpMHTPw5G322raQ
 mDOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=d8ZfoDtm1dnBxakpaxWSGl/P4D09reVrsqJJPTK3o5Y=;
 b=W81NhGIW0ZC9oVoSd7eYq/78JP/Z72HcMUV4JABPfJI07TbOrxwpnzNzxp9uObs2Af
 zwLAbNN/5wW9mkPknBvxQtOxonzLw3RdHH7c+btCfVZd54MxfVSC/qgfaC6XUE+YZRrv
 3PvkPtYeQYkORja5L0lh23mlkjh+nPuSw1gqda80zhTTOrF/TfZsvdZQKSml3/CpxNtV
 lUxh1HF6OiV5ooeM+PyvDdQWiqMkdi7m1Y3HHuhfNqoZRFqscHSbCBemT1zDBJixXHVD
 JUlFpJQ7jl4QGaWR+fk3poYao3UoK8uDAKKxB+y4kmPGDFQEbsEN4tn4OH2ZqBeDccqx
 +Wjw==
X-Gm-Message-State: AOAM531UIw1g7IQQFjVEOCIyxoxn5L2s1gsyG57xmD0uv56rZuXxPHEv
 tuNpNaHDeCwIEwCUkg8HmO1gem6m
X-Google-Smtp-Source: ABdhPJyKnr+XUT/kANNqwA2nku6JcTVQUOUb60+D2IjvVuBRMtYzQtr15+QbdRUc0WZhmzpIMgGrGw==
X-Received: by 2002:a17:902:bf46:: with SMTP id
 u6mr18027421pls.302.1591565950768; 
 Sun, 07 Jun 2020 14:39:10 -0700 (PDT)
Received: from ?IPv6:2607:fb90:4ab:d283:a5d5:3c19:32c9:918a?
 ([2607:fb90:4ab:d283:a5d5:3c19:32c9:918a])
 by smtp.gmail.com with ESMTPSA id a10sm4219449pgv.72.2020.06.07.14.39.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Jun 2020 14:39:10 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 7 Jun 2020 14:39:08 -0700
Message-Id: <0669A844-2A58-4A26-AFEF-E09072CF4B2E@gmail.com>
References: <ea8fbeab-bdd6-6d57-5053-35f7c488d907@systemli.org>
In-Reply-To: <ea8fbeab-bdd6-6d57-5053-35f7c488d907@systemli.org>
To: Nick <vincent@systemli.org>
X-Mailer: iPhone Mail (17F75)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_143914_937015_76CDC7A9 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1035 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] olsrd: not compiling with gcc 9
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

Cgo+IExlIDcganVpbiAyMDIwIMOgIDE6MzggUE0sIE5pY2sgPHZpbmNlbnRAc3lzdGVtbGkub3Jn
PiBhIMOpY3JpdCA6Cj4gCj4g77u/SSB3b3VsZCBzdWdnZXN0IGRvaW5nIHRoaXMgUFIgYXMgcGF0
Y2ggbGlrZSBmcmVpZnVuayBiZXJsaW4gaXMgZG9pbmcgaXQ6Cj4gaHR0cHM6Ly9naXRodWIuY29t
L2ZyZWlmdW5rLWJlcmxpbi9maXJtd2FyZS9jb21taXQvOTNmOWEwMjZlMDI1YzdiNjYzMzY5ZjUy
ODRjZWMwYmI5MTM0NTIyMApTb21lb25lIG5lZWRzIHRvIHByb3Bvc2Ugb25lIHRoZW4uCj4gCj4g
T3RoZXJ3aXNlLCBvbHNyZCB3b24ndCBjb21waWxlIGFueW1vcmUuIDovIE9yIG1ha2luZyBhIGZv
cmssIGJlY2F1c2UKPiBvbHNyZCBzZWVtcyBub3QgdG8gYmUgbWFpbnRhaW5lZCBhbnltb3JlLgo+
IAo+PiBPbiAwNy4wNi4yMCAyMjoyNywgTmljayB3cm90ZToKPj4gSGVyZSBpcyBhIFBSIHRoYXQg
aXMgZml4aW5nIHRoZSBpc3N1ZS4gV2h5IGlzIHRoYXQgbm90IG1lcmdlZD8gOi8KPj4gCj4+IGh0
dHBzOi8vZ2l0aHViLmNvbS9PTFNSL29sc3JkL3B1bGwvNzkvZmlsZXMKPj4gCj4+IE9uIDA3LjA2
LjIwIDIyOjAzLCBSb3NlbiBQZW5ldiB3cm90ZToKPj4+PiBMZSA3IGp1aW4gMjAyMCDDoCAxOjAw
IFBNLCBOaWNrIDx2aW5jZW50QHN5c3RlbWxpLm9yZz4gYSDDqWNyaXQgOgo+Pj4+IAo+Pj4+IO+7
v0kgY2FuIG5vdCBjb21waWxlIG9sc3JkIGRhZW1vbiB3aXRoIGdjYzkuCj4+Pj4+ICNkZWZpbmUg
aXNOYU4oeCkgKHggIT0geCkKPj4+Pj4gLi4uCj4+Pj4+IGlmICghaXNOYU4oZ3BzZGF0YS0+Zml4
LnRpbWUpKSB7Cj4+Pj4gSGVyZSBmaXgudGltZSBpcyBhIHN0cnVjdCB0aW1lc3BlYy4KPj4+PiBU
aGUgY2FsbCBpcyBqdXN0IHdyb25nLCBvcj8gV2h5IHNob3VsZCBJIGNoZWNrIGEgc3RydWN0IGZv
ciBhIHZhbGlkIGZsb2F0Pwo+Pj4gVGhpcyBicm9rZSB3aGVuIGdwc3V0aWxzIGdvdCB1cGRhdGVk
LiBBUEkgY2hhbmdlIHdpdGggbGliZ3BzLgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPj4+
PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+Pj4gaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdAo+Pj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+Pj4gaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKPj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+PiBodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4g
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
