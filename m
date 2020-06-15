Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84741FA3DE
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jun 2020 01:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H0lfo2KNQTKTTyRNpIrtpL7TxR3ctjGP/0rOtu0I56U=; b=ABDCGPDcqfZzoy
	+LXnsU+6F/8kXdCXBAZ+PsuTHFav4LwkotwYUadEjXGJjXllVycKlKSTSeE5jBDzZNv0xIF8947su
	LbKVDcwOF3fYGOo4iqN6ceRIwu9V6VcT6bi7QwuXJhcId6/IEgubBvsBLEghgLBLvuoKwMBkLLXtA
	24lxWdk1lNtyDvJ6NZbpplR4bJ9Rt7sHQYoBClVqYBZcJNUFuVXxTyQbv+7u/BMqKBYXEWJntT5Jl
	r21jOne29V3x09gGOUht1h+rPjUlNQL6rGjiJWmBL6xJ009v6BZMnQnYbPs/8oEb5zugeZE9wsElY
	29vQ7nCJy8cioZhZXNDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkyBd-00046S-GQ; Mon, 15 Jun 2020 23:06:41 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkyBX-00045W-H6
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 23:06:36 +0000
Received: by mail-wm1-x32b.google.com with SMTP id l26so1127548wme.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jun 2020 16:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:content-transfer-encoding:mime-version:subject:from
 :to; bh=2BKi7tfVkqhbpkq13u+aBlUiLc+Jfuwzv99ANynQBUY=;
 b=cIl7VgNuYT4xIW2IJez0b+oHtCIrYmGwX2BcCfMSYaB1ahIPI1+85OZR/Ab3vgMb+l
 Qwotauwc3aEsN7GnfXAH7YABK7jXfTwaY2rDHwnUAaA9w/RwG4lxb55JMV+bOCnWHVdr
 EBOI8CpBkrBnKR6xQzknIwW1r7mXxhU7rv7Ankuudr77UyMWfS36EsueGr9wRkbhuZCz
 HQIBMmncWGakUJ0XQWQLggW/7GWhpkoNUeurCMrLGxqv7PaUCHJO2B95CIuZ9swSptau
 ueRiRlt4K8zfW/t0cTg5KTF1br8v/xdlpe/sqrwbMSLd9duKFCMnsJgwXWyMq8n73rE8
 YZPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:content-transfer-encoding
 :mime-version:subject:from:to;
 bh=2BKi7tfVkqhbpkq13u+aBlUiLc+Jfuwzv99ANynQBUY=;
 b=S1TkG7psj9ksV8JiTjL16tii8KG65OA048X3wPfXbA9llWCTLHKfXhZnwHl1SJm3qg
 9wuSfiCvARr7twOBv0G5Qg3x/zV24kRRwlNyEd5PyfcFXGdGtPdpesC2ZSbr9Jtx4h3O
 On7ORpf8LrW3tgKnDBVGNuhS3IodkewQJpylpOgdNSUO9ZgbvwDRoZv2a7M8q6FNjZM4
 cZdTWB4Bqph8EMVpwFVb8iP2rccrYQRHKW1BIC4u0Dw5iOGttMw0dsCdj5Tk6NsiTa3P
 fP/q1eihEJwuGOsF5IAZZ9etVWZ0CJMiJULglk7+pZy+Tfw7M7Vz7C9SZBgyh+PHaAr2
 p0dg==
X-Gm-Message-State: AOAM533YXnXtuy76/Y9gKQLocUagQD2f7h41xj7E+8DySDOUx8ulbanG
 HTao3EyTLlzDLEjWC3iWAdbn8xVHNm1b4Q==
X-Google-Smtp-Source: ABdhPJx31/jkUXLMVm7bKvi0WixGfmeoqYwmJDozFvFYlteh9lm3EH4+FK9ElgcBKz2oansTPudnRw==
X-Received: by 2002:a05:600c:2218:: with SMTP id
 z24mr177523wml.24.1592262391696; 
 Mon, 15 Jun 2020 16:06:31 -0700 (PDT)
Received: from [192.168.1.127] ([80.215.234.73])
 by smtp.gmail.com with ESMTPSA id a15sm26234656wra.86.2020.06.15.16.06.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jun 2020 16:06:30 -0700 (PDT)
Message-ID: <5ee7fef6.1c69fb81.79f98.7027@mx.google.com>
Date: Mon, 15 Jun 2020 16:06:30 -0700 (PDT)
MIME-Version: 1.0
From: hao.hu.upsud@gmail.com
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_160635_567949_AF76678F 
X-CRM114-Status: UNSURE (   5.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hao.hu.upsud[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLY         From and body contain different freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
Subject: [OpenWrt-Devel] An important information regarding my email address
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

R3JlZXRpbmdzLAoKSSBob3BlIHRoaXMgZW1haWwgZmluZHMgeW91IHdlbGwuCgpJIGFtIHdyaXRp
bmcgdG8geW91IGR1ZSB0byB0aGUgZGlzY292ZXJ5IG9mIHNldmVyYWwgc2VjdXJpdHkgaXNzdWVz
IG9mIHRoZSBjdXJyZW50IGVtYWlsIGFkZHJlc3MgaG9waW5nIHRvIGJlIGFibGUgdG8gbWl0aWdh
dGUgdGhlIHBvdGVudGlhbCBpbXBhY3RzLgoKSW4gZmFjdCwgdGhlIGN1cnJlbnQgZW1haWwgYWRk
cmVzcyAoaGFvLmh1LnVwc3VkQGdtYWlsLmNvbSkgaGFzIGJlZW4gdGhlIHZpY3RpbXMgb2Ygc2V2
ZXJhbCBkYXRhIGxlYWthZ2Ugb24gdGhlIEludGVybmV0IG1vcmUgdGhhbiAxMCB0aW1lcyBkdXJp
bmcgcmVjZW50IHllYXJzLCB3aGljaCBpbmNsdWRlcwoKQWZmZWN0ZWQgU2VydmljZQkgICAgICAg
ICAgICAgICAgICAgICAgICBEYXRlCSAgIFZlcmlmaWVkCSAgICBBZmZlY3RlZCB1c2VycwkgUGFz
c3dvcmQKQ29tYm9saXN0CSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSmFuLiAyMDE5
CQkgICAgICAgIDEsMjQ3LDQzMywwODAJIEFmZmVjdGVkClVua25vd24gKENvbGxlY3Rpb24gIzEt
IzUpCSAgICAgICAgICAgICAgICBKYW4uIDIwMTkJCSAgICAgICAgMiwxOTEsNDk4LDg4NQkgQWZm
ZWN0ZWQKbXlmaXRuZXNzcGFsLmNvbQkgICAgICAgICAgICAgICAgICAgICAgICBGZWIuIDIwMTgJ
4pyTCSAgICAgICAgMTQzLDQyNSw0OTUJICAgICBBZmZlY3RlZApVbmtub3duIChBbnRpLVB1Ymxp
YyBDb21ib2xpc3QgSmFuLiAyMDE3KQlKYW4uIDIwMTcJCSAgICAgICAgOTQ4LDM4NSw1OTkJICAg
ICBBZmZlY3RlZApkYWlseW1vdGlvbi5jb20JICAgICAgICAgICAgICAgICAgICAgICAgICAgIE9j
dC4gMjAxNgninJMJICAgICAgICA4NSwxNzQsMjA3CnR1bWJsci5jb20JICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBNYXkuIDIwMTMJ4pyTCSAgICAgICAgNzMsMzU4LDY4MAkgICAgIEFm
ZmVjdGVkCmRyb3Bib3guY29tCSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VwLiAy
MDEyCeKckwkgICAgICAgIDY4LDY1OCwxNjUJICAgICBBZmZlY3RlZApsaW5rZWRpbi5jb20JICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIEp1bi4gMjAxMgninJMJICAgICAgICAxNjAsMTQ0LDA0
MAkgICAgIEFmZmVjdGVkCgphbmQgc29tZSBtb3JlIGNvbWJvIGxpc3QgcmVjZW50bHkgcHVibGlz
aGVkIChsZXNzIHRoYW4gYSB5ZWFyKSBmcm9tIHVua25vd24gZGF0YSBzb3VyY2VzLgpUaGlzIGlu
Zm9ybWF0aW9uIGNvdWxkIGJlIGZvdW5kIG91dCBmcm9tIHNldmVyYWwgd2Vic2l0ZXMgc3BlY2lh
bGl6ZWQgaW4gdGhlIGluZm9ybWF0aW9uIHNlY3VyaXR5LgoKQSBzdWNoIGtpbmQgb2YgZGF0YSBi
cmVhY2ggcmlza2VkIGF0IGRpc2Nsb3NpbmcgbXkgaGlzdG9yaWNhbCBlbWFpbCBjb250ZW50cyBh
bmQgY29udGFjdHMsIHdoaWNoIG1heSBoYXZlIHJlc3VsdGVkIGluIHRoZSBmb2xsb3dpbmdzIHdp
dGhvdXQgbXkgY29uc2VudC4KCi0gcHJpdmF0ZSBpbmZvcm1hdGlvbiB1c2VkIGJ5IHRoaXJkIHBh
cnR5IHRvIGNvbW1pdCBtYWxpY2lvdXMgYWN0aW9ucwotIGlkZW50aXR5IHN0b2xlbiB0byBtYWtl
IHVuYXV0aG9yaXplZCBhY3Rpb25zIG9uIG15IGJlaGFsZgotIHJlYWNoaW5nIG91dCBteSBoaXN0
b3JpY2FsIGNvbnRhY3RzIGZvciBvbmUncyBvd24gcHJvZml0IG9yIHBsYXkgYWdhaW5zdCBteXNl
bGYKLSBvdGhlciBpbXBvcnRhbnQgY29uZmlkZW50aWFsIGluZm9ybWF0aW9uIGRpc2Nsb3NlZCB0
byB0aGUgdGhpcmQgcGFydHkKCkFzIHRoZSBhY2NvdW50IGl0c2VsZiB3YXMgY3JlYXRlZCBpbiAy
MDExLCB3aGljaCBjb3ZlcnMgYSBsb25nIHBlcmlvZCBvZiB0aW1lIGFuZCBhIHZhcmlldHkgb2Yg
YWN0aXZpdGllcywgdGhlIGltcGFjdCBtaWdodCBiZSBzaWduaWZpY2FudCBhbmQgZGlmZmljdWx0
IHRvIGFzc2Vzcy4KCkF0IHRoaXMgdGltZSwgSSB3b3VsZCB3aXNoIHRoYXQgeW91IGNvdWxkIHJl
dmVydCBiYWNrIHRvIG1lIGlmIGFueSBzdXNwaWNpb3VzIHRoaW5ncyBtYXkgaGF2ZSBiZWVuIHdp
dG5lc3NlZCBhbmQgcmVsYXRlZCB0byBtZSwgd2hpY2ggbWF5IGluY2x1ZGUgdGhlIHRoaW5ncyB0
aGF0IG1ha2UgeW91IGZlZWwKLSBhc3RvbmlzaGVkCi0gd3JvbmcKLSBlbW90aW9uYWxseSBuZWdh
dGl2ZQoKQWRkaXRpb25hbGx5LCBwbGVhc2Uga2luZGx5IHVwZGF0ZSBteSBjb250YWN0IGVtYWls
IGFkZHJlc3MgdG8gdGhlIGZvbGxvd2luZyBuZXcgb25lIGluIHlvdXIgY29udGFjdCBsaXN0OgoK
aGFvLmh1LmZyQGdtYWlsLmNvbQoKVGhhbmsgeW91IHZlcnkgbXVjaCwKCktpbmQgcmVnYXJkcywK
CkhhbyBIdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
