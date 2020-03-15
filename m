Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AAF186047
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 23:41:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gkCDCW2nOtWUeHpLNqZFMe2RRLRm6ynViYtzwW4mdjg=; b=Zsp55lKnlgw/vlhU3elB76Jp1
	wldgxlA26k6odlvw/gsiv57SbCJW/2frHhcAjh0OzRziTLN2Gn1CulfXwqyNaQEQnd0+quEr1Xcvs
	fFlA6kdtITI3dUb+QbtykWNkiyOTLq1sEIiHyIBm9iBk28w2WyoZwi+UEpa7kz2Z0+eq76Mgxx64/
	CQ4ukqwd8jPohYvcXUpFSXZs8A1SZG4xiCpdRqtURjtKbuYXMQlQ2UeyT43lEfKzMkoc3FWLrq6Te
	gA2ExAbAxNoGw99P2QHjM9UrH9M5rTUuYOMJd20M3VargfWt38ctO/KSDRvrGJg3bzr68ejvokvDB
	7IjfLUSZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDbw8-0008N4-34; Sun, 15 Mar 2020 22:40:48 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDbvz-0008Mk-At
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 22:40:41 +0000
Received: by mail-wm1-x32e.google.com with SMTP id t13so9672910wmi.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Mar 2020 15:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=o+UBD4177v8uQ4Sa2ELQmY56uMdVpLex057zhxRnGUY=;
 b=LmGnYG8fyaF2l/pfL74U1CweCoofJ3BA54+863ZQVZKDukyIJjWcU62/VCNLtEhD3d
 EfRX7d8RVwGfY5o7d8V9LjcFa3k05VVzBqVAVGRzzBgR8HzTeNDHqg91R+DbDNzla5k9
 kz4Pc2NBGaCe2hpU1YWG8S6yXjCzzEWq9CoB+gQ+ZIXo0f6nnoE2EUGlRMjDjFqYhL+N
 R4nkq6eFu2GAVotS7S9zqqEo/V2AH+hpYD6V10kz5qMfYpEXORwTj6yrPrtKND9mIL6G
 MsZjDaC2OLw2zn/h15jtEU0fCeBUgBOaw08AbXq7zMO6DJkUxCF7UpZ2O3+4H5oI3gd7
 UgUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=o+UBD4177v8uQ4Sa2ELQmY56uMdVpLex057zhxRnGUY=;
 b=dZgW8A55SpTF995xM9rxJ9L+GriKdtqcil6JneNS9712vrJmM3q6pCEVfLhrpdaId8
 GsJc6Gp+riP6iwK+1Vxa9tcxadgCYQNXtV+5qHcUpv5ERQH/Ut4uYhbs2Am7DSUIk1hZ
 ujVocVxeXbNMAe21zTiJ7/OQhblHZ3Zzk4SDSYmUoV+tQNIiVasL+D0YeDaGzxXwV5W1
 Jg0ip2PSuLatfZImKSkwwJx+7UTx13scJEYstO2UJ9U4QnfakXy+RPa2XJw3iboEWTCF
 wcqG3HQVYlzr0pjckOwfnwWyZxQXuYGmsBAPOkPy2LKYOMZifB2EGXb3Vka0cgvVWrqf
 MLAQ==
X-Gm-Message-State: ANhLgQ3cs2LrKEvqf4HJUuzw+MRktFxI/ZX39sDFg+GK3hCmhW4F9l1g
 OoRrXkbd7Y3RwqBPBuXcXMrQsj5h1nU=
X-Google-Smtp-Source: ADFU+vtwr6aeA1Q1POrA86ifekvYjTdlp7dsg9Qn8ZE7QKd5uBF0CFSi8XhGPEG9fqb2spHQMYQncQ==
X-Received: by 2002:a05:600c:2c10:: with SMTP id
 q16mr24090280wmg.69.1584312036900; 
 Sun, 15 Mar 2020 15:40:36 -0700 (PDT)
Received: from ?IPv6:2003:ec:2f0e:f800:c11a:e590:5390:ceb5?
 (p200300EC2F0EF800C11AE5905390CEB5.dip0.t-ipconnect.de.
 [2003:ec:2f0e:f800:c11a:e590:5390:ceb5])
 by smtp.gmail.com with ESMTPSA id 96sm10976765wrm.63.2020.03.15.15.40.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Mar 2020 15:40:36 -0700 (PDT)
To: =?UTF-8?Q?Alin_N=c4=83stac?= <alin.nastac@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <20200305193427.17434-1-dev@kresin.me>
 <CAF1oqRBVWHEHG37GTnUZ0vW-VsvK4pTp0rUBJq-MP3+wgCXOdw@mail.gmail.com>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <8294a7b0-68f5-9708-72b6-8d7207cad8b9@kresin.me>
Date: Sun, 15 Mar 2020 23:40:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAF1oqRBVWHEHG37GTnUZ0vW-VsvK4pTp0rUBJq-MP3+wgCXOdw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_154039_516860_94A0D6D4 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] iproute2: revert add libcap support,
 enabled in ip-full
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

MDUvMDMvMjAyMCAyMzoyOSwgQWxpbiBOxINzdGFjOgo+IE9uIFRodSwgTWFyIDUsIDIwMjAgYXQg
ODozNCBQTSBNYXRoaWFzIEtyZXNpbiA8ZGV2QGtyZXNpbi5tZT4gd3JvdGU6Cj4+Cj4+IFRoaXMg
cmV2ZXJ0cyBjb21taXQgYTZkYTNmOWVmNzQ2MTAxYjg0YTZmNTMwZjVhNDBkZTI4MzQxYjY5YS4K
PiAKPiBOb3QgZXhhY3RseSBhIHJldmVydCwgc2luY2UgaXQga2VlcHMgSEFWRV9DQVAgbG9naWMu
CgpTdXJlLCBJIHdhbnQgdG8gbWFrZSBzdXJlIHRoYXQgSEFWRV9DQVAgaXMgcmVhbGx5IGRpc2Fi
bGVkLgoKPj4gVGhlIGxpYmNhcCBpc24ndCBhcyBvcHRpb25hbCBhcyB0aGUgY29tbWl0IG1lc3Nh
Z2VzIHN1Z2dlc3RzLiBBIGhhcmQKPj4gZGVwZW5kZW5jeSB0byB0aGUgbGliY2FwIHBhY2thZ2Ug
aXMgYWRkZWQsIHdoaWNoIGlzIG9ubHkgYXZhaWxhYmxlIGluCj4+IHRoZSBleHRlcm5hbCBwYWNr
YWdlcyBmZWVkLiBUaGVyZWZvcmUgaXQgaXMgaW1wb3NzaWJsZSB0byBwYWNrYWdlCj4+IGlwLWZ1
bGwgd2l0aG91dCBoYXZpbmcgdGhlIGV4dGVybmFsIHBhY2thZ2VzIGZlZWQgdXAgYW5kIHJ1bm5p
bmcsIHdoaWNoCj4+IGlzIGEgcmVncmVzc2lvbiB0byB0aGUgZm9ybWVyIGJlaGF2aW91ci4KPiAK
PiBUaGUgbGliY2FwIHN1cHBvcnQgaXMgYnkgYWxsIG1lYW5zIG9wdGlvbmFsLCBvdGhlcndpc2Ug
aXByb3V0ZTIgYnVpbGQKPiB3aWxsIGZhaWwgd2hlbiBpdHMgbWlzc2luZy4KCllvdSBkZXNjcmli
ZSBleGFjdGx5IHRoZSBpc3N1ZSBJIGhpdCB3aGlsZSBidWlsZGluZyBpcC1mdWxsLiBEdXJpbmcg
CmRldmVsb3BtZW50IEkgZG9uJ3QgaGF2ZSBhbnkgZXh0ZXJuYWwvdGhpcmQtcGFydHkgZmVlZHMg
aW5zdGFsbGVkLiBBbmQgCnRoZSBPcGVuV3J0IGJhc2Ugc3lzdGVtIHNob3VsZG4ndCBkZXBlbmQg
b24gZXh0ZXJuYWwvdGhpcmQtcGFydHkgZmVlZHMuIApUaGVzZSBmZWVkcyBhcmUgYW4gYWRkIG9u
IGFuZCBieSBubyBtZWFucyBhIHJlcXVpcmVtZW50LgoKPiBCZXNpZGVzLCB5b3VyIGNvbW1pdCBh
Y3R1YWxseSByZW1vdmVzIHRoaXMKPiBkZXBlbmRlbmN5LiBJZiB0aGlzIGlzIG5vdCBhIGxpdmlu
ZyBwcm9vZiBvZiB0aGUgZmFjdWx0YXRpdmUgbmF0dXJlIG9mCj4gdGhpcyBkZXBlbmRlbmN5LCBJ
IGRvbid0IGtub3cgd2hhdCBlbHNlIGlzLgoKU29ycnksIEkgZG9uJ3QgZ2V0IHdoYXQgeW91J3Jl
IHRyeWluZyB0byBzYXkuCgo+IE9uZSB3b3VsZCBhcmd1ZSB0aGF0IGlwLWZ1bGwgc2hvdWxkIGNv
cnJlc3BvbmQgdG8gdGhlIGZ1bGwgZmxlZGdlZAo+IHZlcnNpb24gb2YgdGhlIHBhY2tldC4gSWYg
dGhlIGRlcGVuZGVuY3kgb2YgYW4gZXh0ZXJuYWwgcGFja2FnZSBpcyB0aGUKPiBpc3N1ZSwgaG93
IGFib3V0IG1ha2luZyBhIGRpZmZlcmVudCB2YXJpYW50IHdpdGggSEFWRV9DQVAgc3VwcG9ydD8g
SXQKPiBjb3VsZCBiZSBjYWxsZWQgaXAtcmVhbGx5LWZ1bGwgKG9yIGlwLWZ1bGxlc3QpLgoKVHJ5
IHRvIGdldCBsaWJjYXAgaW50byB0aGUgT3BlbldydCBiYXNlIHN5c3RlbSBhbmQgZW5hYmxlIEhB
VkVfQ0FQIAphZnRlcndhcmRzPwoKTWF0aGlhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
