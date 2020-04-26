Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8051B8FCC
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 14:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bXni203Ij8tFlXYCLIPTexRQetjC9SCc9QfPTx/M4Dk=; b=mBiusly2dmMJ0tFM32fE0Q06q
	mvRDpG3ymZGq5LawIE0ydTtkG+YMwIJG6BQFFZsaZ33IE6pVzUfh3KdnRJ4FQAnyezNXHVyY3Cy5r
	Osy30SEuWbnbZAYg4zJeHEUKGioA9xfqeurLNaa9QkIfzDQ2cBYPkPPwVVmGDudZ8bvSDH0H1YTM1
	xZW0KYQ5/0up5ISg7cGGP97sibrGhXRHUW67hRBYX62VqxA7a+zgxhVhK8uhQpcXJ/z21f18MeqnE
	weSQQ5zUwwFA8vygG15CEKvoh7C0ExnQqntOBc4KN8QT+6bgiNMsogkmVlMSW0R/DjC3qSdL38CUj
	LJVXpHxVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSgN5-0002sp-PD; Sun, 26 Apr 2020 12:26:55 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSgMz-0002sC-Um
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 12:26:51 +0000
Received: by mail-wm1-x335.google.com with SMTP id x25so16420319wmc.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Apr 2020 05:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=+E5aYEHWls88me9n8Re7fw9AXEYSL9cHbwNGgdYEORw=;
 b=LEnCw2fie9D56gOWCgR6izpvh2DUaYuxImeiwHUptJ5bJ6D+dB/Xus1qIRWWCOy4V9
 IELPtHgMAd2pxt7w1tw0qcXLNCZd8zMTZkspPBqWFthCtRF5H2yEd/WLNkspMq6yx3CK
 VAC8ni60iDx4IWbODrXEinStT0OF2NMyH9mNMqSSDI/efzW0HlAjE5l0gsLChd72sTle
 Or8Ex4Tc45ctPzHJa17eaY4WtdICywP4dnftdmurFAdA2w2nW0DJ+Yoeazd8xYCUuMzc
 hSkOIZNQ99XuT4X9Ry7TcC4w9P3yuxq9c0snA/CGuIN0s2fn36RfN8aJlbFLBlbgjq75
 /LrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+E5aYEHWls88me9n8Re7fw9AXEYSL9cHbwNGgdYEORw=;
 b=UYRJIO4zyMuT3uy/2fk0JLh65hzZg5cfkXEOYT4qH/EDBpawddgiVcoUiMAkMszZu5
 in+3rf9qA17f2hicFtCIvRdlLQh++5srF3AD2nv0Wr0w0Ggrt5CW4BqrvtTciYG3Gd2P
 qAk0N8HAGFZ1y8tXN3Sz0XGT4fFV7+7nhiD1u6qlzaSaHrxHeFdOTtdLqLprk3EHQhyF
 dnAR4aaxCbkYz7SbWG2OvQqXjwhGRQnPwzgZxcaG6fmC5fcJ0wAohNIzdK0BORIe6m8r
 DfRNWGJeMr56W/IgOEwaV/NA+3FAlWHaVKpRk/M2QnCcq9hX5zxTk1nieEwn/0mPbfOX
 Jwdg==
X-Gm-Message-State: AGi0PubAxwKVBIZFtNHAbs9kpQcBpt0W6lZSe/ze3ZgrAGvMceBqicQu
 Z9rzdaXziwLtehDs4cBL3+oC0xHh
X-Google-Smtp-Source: APiQypJR1Irl/3LFNV0aOuSPJgQbxmUTNeYdQOqHIeUegDhK2rX2Q8WRdzs/UKBoxW817iqMFqvr+g==
X-Received: by 2002:a1c:1bcb:: with SMTP id b194mr21460881wmb.4.1587904007758; 
 Sun, 26 Apr 2020 05:26:47 -0700 (PDT)
Received: from [192.168.1.10] (33.red-2-137-27.dynamicip.rima-tde.net.
 [2.137.27.33])
 by smtp.gmail.com with ESMTPSA id z1sm10947029wmf.15.2020.04.26.05.26.47
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Apr 2020 05:26:47 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <c66aa83d-54a8-711e-2899-7c0335db49aa@candelatech.com>
From: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>
Message-ID: <8256a6ab-2f86-8dee-7bb9-f6ab83e704be@gmail.com>
Date: Sun, 26 Apr 2020 14:26:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <c66aa83d-54a8-711e-2899-7c0335db49aa@candelatech.com>
Content-Language: es-ES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_052649_992459_B3606CE6 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] New ath10k-ct firmware available.
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

SGkgQmVuLAoKSSd2ZSByZW5hbWVkIHRoZSBvbGQgZnVsbC1odHQtbWd0IGZpcm13YXJlcyBhbmQg
YWRkZWQgdGhlIG5ldyBvbmVzIGFzIApodHQtbWd0LiBUaGlzIHdheSB0aGUgdXNlciBjYW4gY2hv
b3NlIGJldHdlZW4gYm90aCBvZiB0aGVtOgpodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVu
d3J0L3B1bGwvMjk2MwoKQmVzdCByZWdhcmRzLArDgWx2YXJvLgoKRWwgMjQvMDQvMjAyMCBhIGxh
cyAyMDo0OCwgQmVuIEdyZWVhciBlc2NyaWJpw7M6Cj4gRm9yIHRoZSB3YXZlLTIsIHRoZXJlIGlz
IG5vdyBhIG5ldyB2YXJpYW50OsKgIGh0dC1tZ3QtY29tbXVuaXR5ICh2cyB0aGUgCj4gb2xkIGZ1
bGwtaHR0LW1ndC1jb21tdW5pdHkpCj4gdGhlIG5vbi1mdWxsIG9uZSAoaGVuY2UgZm9ydGggJ2Rp
ZXQnKSBjb21waWxlcyBvdXQgYSBsb3Qgb2YgZmlybXdhcmUgCj4gZmVhdHVyZXMgdGhhdCBhdGgx
MGsgZG9lcyBub3QgdXNlIChhbmQvb3Igd2hpY2ggSQo+IGNvbnNpZGVyIHVuaW1wb3J0YW50KS7C
oCBUaGlzIHNhdmVzIGEgbG90IG9mIHJlc291cmNlcyBhbmQgbGV0cyBvbmUgCj4gY29uZmlndXJl
IG1vcmUgc3RhdGlvbnMvdmRldnMvZXRjCj4gdXNpbmcgZndjZmcuCj4gCj4gSSBhbHNvIHR1bmVk
IHRoZSA5ODg2LzggYW5kIDQwMTkgZmlybXdhcmUgdG8gbWFrZSBiZXR0ZXIgdXNlIG9mIG1lbW9y
eS4gIAo+IFdpdGggcHJvcGVyIGZ3Y2ZnLAo+IHRoZSA5ODg4IHN1cHBvcnRzIDIwMCBzdGF0aW9u
cyBhbmQgdGhlIDQwMTkgc3VwcG9ydHMgMTYyLsKgIEkgaGF2ZSBub3QgCj4geWV0IGZ1bGx5IHRl
c3RlZCB0aGlzCj4gb2YgY291cnNlLCBidXQgd2lsbCBiZSBkb2luZyBzbyBvdmVyIHRoZSBjb21p
bmcgZGF5cy7CoCBJIGRpZCBwcmV2aW91c2x5IAo+IHRlc3QgMjI4IHRvdGFsIHN0YXRpb25zCj4g
b24gYSBMaW5rc3lzIE1SODMwMCAoYWthIEVBODMwMCkgYW5kIGl0IGRpZCBmaW5lIGluIGEgdG9y
dHVyZSB0ZXN0Lgo+IAo+IE15IHN1Z2dlc3Rpb24gaXMgdG8gdXNlIHRoZSBkaWV0IGNvbXBpbGUg
aW4gcGxhY2Ugb2YgdGhlICdmdWxsLWh0dC1tZ3QnIAo+IG9uZSwgYnV0IGFub3RoZXIgb3B0aW9u
IGlzCj4gdG8gZ2l2ZSB0aGUgdXNlciBhbm90aGVyIG9wdGlvbiB0byBwaWNrIHRoZXkgZmlsZSB0
aGV5IHdhbnQgaW4gdGhlIAo+IG9wZW53cnQgbWFrZWZpbGUuCj4gCj4gSSBhbSBob3Bpbmcgc29t
ZW9uZSB3aWxsIGJlIGFibGUgdG8gZG8gdGhlIG9wZW53cnQgcGF0Y2gsIGhlcmUgaXMgdGhlIAo+
IHJhdyBpbmZvIGJlbG93Lgo+IAo+IAo+IDk4OHgKPiA4YjRjOTkyNTNhYTMwOWQzNWYyZTA2MGMx
OTAwOTFiOGRiMWI4NGRiZGEwNmE2YTE1YzgzYWMwZjlhOTM4MTI2ICAKPiBmaXJtd2FyZS0yLWN0
LWZ1bGwtY29tbXVuaXR5LTIyLmJpbi5sZWRlLjAxOAo+IGE3MTY4OTE2ZDZhYTVlNGQ3ODU4Zjhi
NjIwYzBjOTgwYzc2ZDAzZjM5MDkyOWRiNmY0MDc3Njg1Y2UyMDUxZTcgIAo+IGZpcm13YXJlLTIt
Y3QtZnVsbC1odHQtbWd0LWNvbW11bml0eS0yMi5iaW4ubGVkZS4wMTgKPiAvaG9tZS9ncmVlYXJi
L2NhbmRlbGFfaHRtbC9kb3dubG9hZHMKPiA5ODg3Cj4gNDU5NjkyZGViMTg2YTYzYWI4ZWVkZGI3
YWQ1ZDU0Nzc5MjY2ZTY4Y2E2ODZlN2M0NjA2MjU1NGRiNmRjYTEyYiAgCj4gZmlybXdhcmUtMi1j
dC1mdWxsLWNvbW11bml0eS0yMi5iaW4ubGVkZS4wMTgKPiBmZDEyNmE0NTdkMDkyN2QwYzhlYTEw
ZDY2ZWY1YjY3ZDVlMWUwNzQxZjg2OTJiYjMwMTZiYjYwMmQwYWYzMDk4ICAKPiBmaXJtd2FyZS0y
LWN0LWZ1bGwtaHR0LW1ndC1jb21tdW5pdHktMjIuYmluLmxlZGUuMDE4Cj4gL2hvbWUvZ3JlZWFy
Yi9jYW5kZWxhX2h0bWwvZG93bmxvYWRzCj4gOTk4MAo+IGNmMjZlYjM3NTI0ZGU1NGFmNTFmZTli
MmVmZmZjODVlMGU3MGFiODQ5ZTg2MDdlZjYzY2U1YThlY2ZmZWFhNDIgIAo+IGZpcm13YXJlLTUt
Y3QtZnVsbC1jb21tdW5pdHktMTIuYmluLWxlZGUuMDE4Cj4gZTk3Mzc1MzhkNzM3OWUxM2FkNGU0
YzhjNTE5YTYzNjU5YjVlMzRhMzU0NTVlZDlhYzQzOTlhZTgwOTdjYWFiYyAgCj4gZmlybXdhcmUt
NS1jdC1mdWxsLWh0dC1tZ3QtY29tbXVuaXR5LTEyLmJpbi1sZWRlLjAxOAo+IDRkNGY3NGFmY2E0
ODdkNDUyZjI0NGNkNDgzMDRjZjk3MTBkODk0MWViOTdhNjM0NmE5NDllZDZiNjg3N2Q2NTcgIAo+
IGZpcm13YXJlLTUtY3QtaHR0LW1ndC1jb21tdW5pdHktMTIuYmluLWxlZGUuMDE4Cj4gL2hvbWUv
Z3JlZWFyYi9jYW5kZWxhX2h0bWwvZG93bmxvYWRzCj4gOTk4NAo+IGE2YjNkNjZlZmU2NDBhNDMw
YTgzN2YyMzhlOTFlZGRjZDQyM2VlZDZiODg3ZDNhZTE5NzE2ZDg3YTcxZmQwYjEgIAo+IGZpcm13
YXJlLTUtY3QtZnVsbC1jb21tdW5pdHktMTIuYmluLWxlZGUuMDE4Cj4gOTYwNjAyMjdlMzcyYjNi
MjEwYmFkY2NiZTZiMGJkNzVkOWEzNTMzNWE3YTBmMjk2Njk2NGU5ZTg5ZjY2YjAwZiAgCj4gZmly
bXdhcmUtNS1jdC1mdWxsLWh0dC1tZ3QtY29tbXVuaXR5LTEyLmJpbi1sZWRlLjAxOAo+IGVlNTkz
ZmI1NzI0ZDc1YzM3MmRlMDJhYzc4OTRlMTYzMGVlOWY5MDlmY2IyZTJiYmYxN2FhZGVmNjdjYjlk
NDMgIAo+IGZpcm13YXJlLTUtY3QtaHR0LW1ndC1jb21tdW5pdHktMTIuYmluLWxlZGUuMDE4Cj4g
L2hvbWUvZ3JlZWFyYi9jYW5kZWxhX2h0bWwvZG93bmxvYWRzCj4gNDAxOQo+IDQ2ZDhmOGYxZTc4
MDgxMzI5OWRjODc4MGVlZGNmY2VkYTEwM2M2YjRkODkwODU4OWFkMWFkYmVmOTIxNzE0YzAgIAo+
IGZpcm13YXJlLTUtY3QtZnVsbC1jb21tdW5pdHktMTIuYmluLWxlZGUuMDE4Cj4gZDg4NDYyNGZj
MzRmNGI1ZGU3YTNlYzA1MzQ2MjdjNDZjZWEyNWZjYTQ1NjU3ZjNhMmY2YmI4NWY2YzU4OTNkNyAg
Cj4gZmlybXdhcmUtNS1jdC1mdWxsLWh0dC1tZ3QtY29tbXVuaXR5LTEyLmJpbi1sZWRlLjAxOAo+
IDUxZmUwNmY2NjM2NTc3MTY0N2QxNjAzOWNjYThiNTQxZGUzZDY0MmM0NTI3MTk3N2E0Y2ZkNDMz
YzJjNWQ0NWIgIAo+IGZpcm13YXJlLTUtY3QtaHR0LW1ndC1jb21tdW5pdHktMTIuYmluLWxlZGUu
MDE4Cj4gL2hvbWUvZ3JlZWFyYi9jYW5kZWxhX2h0bWwvZG93bmxvYWRzCj4gOTg4OAo+IGQwMWYx
NDI5YWFmMGJmYWMwN2VlZTM1NDdlNTgyMWQxOTEzNjg0MGIyZjk4M2U3NWU3Njk3OWE1YWMxOWI2
ZjAgIAo+IGZpcm13YXJlLTUtY3QtZnVsbC1jb21tdW5pdHktMTIuYmluLWxlZGUuMDE4Cj4gNjhj
NDJmOGUwZGNmNzdmMThkNDgxM2FjOTMxNzRiZjA2ZmY1Y2Y1YWE0ZjY5YmVmZTdmMzVmOWZhZTFk
ZTFlMyAgCj4gZmlybXdhcmUtNS1jdC1mdWxsLWh0dC1tZ3QtY29tbXVuaXR5LTEyLmJpbi1sZWRl
LjAxOAo+IDZjNjkyMTQxMTU1ZjViYjc0YzAxMTc1NTNkNWQ0OGZmMmFhYmE3M2JkNGQ1ZTkwYTUw
NDRhNWUyZWMwZmFhYjAgIAo+IGZpcm13YXJlLTUtY3QtaHR0LW1ndC1jb21tdW5pdHktMTIuYmlu
LWxlZGUuMDE4Cj4gL2hvbWUvZ3JlZWFyYi9jYW5kZWxhX2h0bWwvZG93bmxvYWRzCj4gCj4gRXhh
bXBsZSBmd2NmZyBmaWxlcyBmb3IgOTg4OCBhbmQgNDAxOSB1c2luZyB0aGUgZGlldCBodHQgbWd0
IGJ1aWxkczoKPiAKPiByb290QE9wZW5XcnQ6L2xpYi9maXJtd2FyZS9hdGgxMGsjIGNhdCBmd2Nm
Zy1wY2ktMDAwMFw6MDFcOjAwLjAudHh0Cj4gIyBGb3IgOTg4OAo+IHZkZXZzID0gOAo+IHBlZXJz
ID0gMjAyCj4gYWN0aXZlX3BlZXJzID0gMjAyCj4gc3RhdGlvbnMgPSAyMDIKPiByYXRlX2N0cmxf
b2JqcyA9IDcKPiByZWdkb20gPSA4NDAKPiAjZnduYW1lID0gZmlybXdhcmUtNS1odHQtbWd0LWIu
YmluCj4gZnd2ZXIgPSA1Cj4gbm9od2NyeXB0ID0gMAo+IGN0X3N0YV9tb2RlID0gMAo+IHR4X2Rl
c2MgPSAyMjAwCj4gI21heF9uc3MgPSAzCj4gdGlkcyA9IDQ1MAo+IHNraWRfbGltaXQgPSAzNjAK
PiBtYXhfYW1zZHVzID0gMwo+IAo+IHJvb3RAT3BlbldydDovbGliL2Zpcm13YXJlL2F0aDEwayMg
Y2F0IGZ3Y2ZnLWFoYi1hMDAwMDAwLndpZmkudHh0Cj4gdmRldnMgPSA4Cj4gcGVlcnMgPSAxNjQK
PiBhY3RpdmVfcGVlcnMgPSAxNjQKPiBzdGF0aW9ucyA9IDE2NAo+IHJhdGVfY3RybF9vYmpzID0g
Nwo+IHJlZ2RvbSA9IDg0MAo+ICNmd25hbWUgPSBmaXJtd2FyZS01LWh0dC1tZ3QtYi5iaW4KPiBm
d3ZlciA9IDUKPiBub2h3Y3J5cHQgPSAwCj4gY3Rfc3RhX21vZGUgPSAwCj4gdHhfZGVzYyA9IDIw
MDAKPiAjbWF4X25zcyA9IDMKPiB0aWRzID0gMjYwCj4gc2tpZF9saW1pdCA9IDM2MAo+IG1heF9h
bXNkdXMgPSAzCj4gCj4gVGhhbmtzLAo+IEJlbgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
