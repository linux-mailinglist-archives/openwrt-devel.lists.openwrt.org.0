Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEC11E1303
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 18:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a+opRYE1qB80KDB4veVfxlFKKIeo7akch6uJ6n2CnQg=; b=lorZJc1GLyg5qqblyE2F/O7m6
	wyertElH646y6KpOQcDk59r6a1BdML6azQtmaeXQ2xa0OIP1UCZD+dAGw+nqJfT4OavmKfeP38NYD
	+NhvJiMy4LSBDcMvN5NEcV5VmZ54dffORyA4ahllUCnLfdckjL7IySHEhRxDd4118zaF0SjY5pfS4
	7qQ2cPCxG7tTpCMTqXlyDGfioxlXuBQqHctRkBefDi3d9xGrdoOPD3miNkXMcuQ2vuoDx+1HDay/1
	jsndGiWIbCpnsx+uDp1/fKcqf1JuR8gd0dd2T58L1ZgoppeImkxWSi63fe7KRFJ7HE/Za5CdtZWV2
	S4O6ff3XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdGHO-0004QK-BR; Mon, 25 May 2020 16:48:46 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdGHH-0004Pv-Mv
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 16:48:40 +0000
Received: by mail-lj1-x241.google.com with SMTP id q2so21373939ljm.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 May 2020 09:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ghI8yYmp6GTTLlOM9gusbZA1vJXd+Zb2GHUKiDWyxh4=;
 b=KMiOFxtbKuBdvfyHltY4MwU5oCiH8rbTLEbTLYNNVSMiOQ/yl1A5XLW6nhEjULxSJh
 wsllAds4I9Hf98AAYyEq0fdxseg9ETES5YOCNYxaxV+DSrxRpZdfKjWlO8zlJYlb6ECT
 Z59IWYB3HLV46/Y4bC2ngxZVCItPZxXuzhVWpKUAbAjXJdKe2WQPcxpvqy59fj73AeOa
 RbKdsW1L3bJeBmf2ek907TiMlKrzjiqGGke4XUOKjS3/Mq01v99kQkM4i567LlilSvQW
 vBw2B8NT/C6ak1cphXfz5kP8hgCyANMDAG4/EeXkwsXVWSwAzAII/67709XMTiDW665b
 DDCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ghI8yYmp6GTTLlOM9gusbZA1vJXd+Zb2GHUKiDWyxh4=;
 b=ZKX+1W0oRvv68zKvr2leDyfEIB4I0Fk6xDnrEfrGsKetILj1y83aZY+G7hSHdegfl2
 o5xqJIRisXVxWUtRYGSmaZnK7NFlxeUedUle1Jq1hpMb7tKKQzTmAWvYx43Bno46qzHZ
 MEkqhL/VjwsWuKYQhBnERmNB/b2cfN5iKmt5Eu45V6gb7qGDz8YEiSf9MYxJTQMbrxuG
 4SlQNiZVM/q/FgF2B42rnI6tTcrhDHrYfYkOoHXsn+p7ypcN5QJFvwiHdg4EYmrkkPX6
 +T7O5qMSVvHAtmTj11HAVnNiiHghN9SwN9MQNv0VIi/ojaU5dXVsuOOr5oy9A5czSHLD
 hdng==
X-Gm-Message-State: AOAM5315J475+JrD3SVJmM45oBWg7P1y/+mYhDNo0FQKEUaI0Ojq00yA
 2F9qvuBwN81glUaXXLqqdKrQpkYg
X-Google-Smtp-Source: ABdhPJzMrKniWdyaz+34nKztIDPfFPSIBLtB7UiWJyvOIgP925M8mjGeIrjsmC5VeDz4mEl7pk0fbQ==
X-Received: by 2002:a2e:87d1:: with SMTP id v17mr11429454ljj.336.1590425316334; 
 Mon, 25 May 2020 09:48:36 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id y18sm5116469lfk.16.2020.05.25.09.48.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 09:48:35 -0700 (PDT)
To: Felix Fietkau <nbd@nbd.name>, openwrt-devel@lists.openwrt.org
References: <20200525151908.3930-1-nbd@nbd.name>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <00b263c6-a134-d165-e3d1-d837a23bd236@gmail.com>
Date: Mon, 25 May 2020 18:48:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200525151908.3930-1-nbd@nbd.name>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_094839_746971_211DDF2A 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH libubox 1/3] blobmsg: fix length in
 blobmsg_check_array
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

T24gMjUuMDUuMjAyMCAxNzoxOSwgRmVsaXggRmlldGthdSB3cm90ZToKPiBibG9ibXNnX2NoZWNr
X2FycmF5X2xlbiBleHBlY3RzIHRoZSBsZW5ndGggb2YgdGhlIGZ1bGwgYXR0cmlidXRlIGJ1ZmZl
ciwKPiBub3QganVzdCB0aGUgZGF0YSBsZW5ndGguCj4gRHVlIHRvIG90aGVyIG1pc3NpbmcgbGVu
Z3RoIGNoZWNrcyAoZml4ZWQgaW4gdGhlIG5leHQgY29tbWl0KSwgdGhpcyBkaWQKPiBub3Qgc2hv
dyB1cCBhcyBhIHRlc3QgZmFpbHVyZQo+IAo+IFNpZ25lZC1vZmYtYnk6IEZlbGl4IEZpZXRrYXUg
PG5iZEBuYmQubmFtZT4KClRlc3RlZC1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tp
LnBsPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
