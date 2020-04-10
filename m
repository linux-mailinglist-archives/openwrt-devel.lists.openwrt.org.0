Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA401A4C29
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 00:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MqoM1iVDC6nuROjNctv4QWXNrRX0NqLnJg7MqrQnRDg=; b=CbbEGRwyCYDxd6
	PH/p4QErDucnqQvhMAyYcX7dYyaELCnPw+0iqW8Ref8ANRQaSqkoYJi6k9wAnb9BLQeJwus/59PHi
	vFqyCMRZxB2brhTBLOuw3fMfwdKhUUqBCMqNmAJI5FQhJtxXcE4zCjORuS1Mt2G3sTJiHV3AcgA8l
	qNbYZ4Ka9PX9fRwmYLLbIcyY/6jcCeF80fSPKmfdnhuf4p2KuJ3nKxWSkZ5JuoJ065qvVZG1DT2WH
	0MDqk2q9vPAAmP+6rAxkX39RjuVTOQRv5NxQD3dzU1W6VvDm9ynliATybd2xss2OLYfuAFbDi8bgI
	FMcJMme7zV3YuAa2RqFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN2Hj-00033q-IX; Fri, 10 Apr 2020 22:38:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN2Hc-00033P-DX
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 22:37:57 +0000
Received: by mail-wr1-x442.google.com with SMTP id c15so3882419wro.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Apr 2020 15:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y1ySqqAAbcTR4GINnKuviPuYKjzlDotyec3ubI3WKuY=;
 b=Nfcos1NZ1YxeHGA5J/axokTHaIiIXcuLd8n33y4duRTgiJU98l+UVBsKyG2Dn7EeIK
 X61RVdWTdxVwXDw4L3xFCUJhfOlgBxJOESEDpuVACsHGTioY7msXfin3g/dloCyL585t
 twEjTv2njRii7qTGorQek15yOn+nwKae68Dm0AekyyySJaLXQD0D45Ssku2KSTITdEX5
 vDzcUIOutaEjMT0gPnECqIawN6T9fLiQOO6fFcXStpjeuFYxUoY6MmZeODKri0x3qzUL
 W7GVfoKmptmx3d66BOIWkG89nlBJHOiPEhmvg4+pGDqOuuBBpvPAvG4nS+sZ9UpbLJ3M
 NPtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y1ySqqAAbcTR4GINnKuviPuYKjzlDotyec3ubI3WKuY=;
 b=Oz3bJvNcXskFjaNz8Acl59BtLAZ5g1a0p3by2k40LNPGQnKgOV8Z0MxMj9YSM8XJDy
 G1YEaKfsIxGLUue+dW3xY/clmfQ2VbmKSlMvM9r9dozLeP/E4EDcQr3jBBdoTSeN+O3A
 n4FTt/cgZKKOQnXogfxkQLaUIxpbPaDS33e6xa5suq+Z5BLb3RGy1Tjmo9rw3XWJDy92
 l5PKGi9Zo7YNQvJuJ/GqNpcra0bZEq/ZCvQvw4zSeOCDkahsJ1U8UNuDx6maXwRnyAXM
 xp1bzAMARhIhY4FE1aHAJShOHCZREgiMgmTJK6W9Jwbxe3i+owMVb+CS9XiBCjxe8oV4
 efGQ==
X-Gm-Message-State: AGi0PubUQwZbdRuhWviZHRrXnZogKzw4A16cHOtraDcauT226oi95xCb
 uDBkZzkMJjnPSVulFJ9+1l8=
X-Google-Smtp-Source: APiQypLApYU4Szh04nQpcGXrad66XH3uJ0FinkqwN2hB9IZCkfUuWBdFSYxSB9/9z95apViUyb/c6w==
X-Received: by 2002:adf:f750:: with SMTP id z16mr4561830wrp.115.1586558274152; 
 Fri, 10 Apr 2020 15:37:54 -0700 (PDT)
Received: from localhost.localdomain (ip-95-220-62-111.bb.netbynet.ru.
 [95.220.62.111])
 by smtp.gmail.com with ESMTPSA id y15sm4733826wro.68.2020.04.10.15.37.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 15:37:53 -0700 (PDT)
From: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 John Crispin <blogic@openwrt.org>
Date: Sat, 11 Apr 2020 01:37:09 +0300
Message-Id: <20200410223709.1974-1-dobrovolskiy.alexey@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_153756_468004_8D5E78AB 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dobrovolskiy.alexey[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [RFC PATCH] ramips: remove patches for USB-dwc2
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
Cc: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SW4gRlMjMjczOCB3ZSBjYW4gc2VlIHRoYXQgcGF0Y2ggZmlyc3QgaW50cm9kdWNlZCBpbgplOGVi
Y2ZmICgicmFtaXBzOiBhZGQgYSBleHBsaWNpdCByZXNldCB0byBkd2MyIikKYnJlYWtzIFVTQiBm
dW5jdGlvbmFsaXR5IHNpbmNlIDE4LjA2LiBUaHVzLCB0aGlzIHBhdGNoIHNob3VsZCBiZSByZW1v
dmVkLgoKUmVtb3ZlZDoKLSAwMDMyLVVTQi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gKCkZp
eGVzOiBGUyMyNzM4CkZpeGVzOiBGUyMyOTY0CgpTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgRG9icm92
b2xza3kgPGRvYnJvdm9sc2tpeS5hbGV4ZXlAZ21haWwuY29tPgotLS0KCk5vdGVzOgogICAgSSBj
YW7igJl0IGFzc2VzcyB3aGV0aGVyIHRoZSByb290IGNhdXNlIG9mIHRoZSBlOGViY2ZmIHBhdGNo
IGhhcyBiZWVuIGZpeGVkCiAgICBpbiB1cHN0cmVhbSBvciB0aGUgcGF0Y2ggbmVlZHMgdG8gYmUg
cmV3cml0dGVuLiBGcm9tIHRoZSBkZXNjcmlwdGlvbgogICAgb2YgdGhlIGJ1Z3MsIGl0IGlzIG9u
bHkgY2xlYXIgdGhhdCBpbiB0aGUgbGF0ZXN0IE9wZW5XcnQgdmVyc2lvbnMgdGhpcwogICAgcGF0
Y2ggZG9lcyBub3Qgd29yayBjb3JyZWN0bHkuCiAgICAKICAgIEkgYnVpbHQgMTguMDYuMiBhbmQg
bWFzdGVyIGF0IDkxYzYxYWFlMjAwZWNmOThlMzMyNDgyZDM5NWJlZGE4MTlkNmE0ZmEKICAgIGZv
ciBaeVhFTCBLZWVuZXRpYyB3aXRoIDAwMzItVVNCLWR3YzItYWRkLWRldmljZV9yZXNldC5wYXRj
aCByZW1vdmVkCiAgICBhcyBkZXNjcmliZWQgaW4gRlMjMjczOCBhbmQgVVNCIHdvcmtzIHdpdGgg
YSBVU0IgZmxhc2ggZHJpdmUgKEZTIzI5NjQpLgoKIC4uLi8wMDMyLVVTQi1kd2MyLWFkZC1kZXZp
Y2VfcmVzZXQucGF0Y2ggICAgICB8IDI5IC0tLS0tLS0tLS0tLS0tLS0tLS0KIC4uLi8wMDMyLVVT
Qi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2ggICAgICB8IDI5IC0tLS0tLS0tLS0tLS0tLS0t
LS0KIDIgZmlsZXMgY2hhbmdlZCwgNTggZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQg
dGFyZ2V0L2xpbnV4L3JhbWlwcy9wYXRjaGVzLTQuMTQvMDAzMi1VU0ItZHdjMi1hZGQtZGV2aWNl
X3Jlc2V0LnBhdGNoCiBkZWxldGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L3JhbWlwcy9wYXRj
aGVzLTUuNC8wMDMyLVVTQi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gKCmRpZmYgLS1naXQg
YS90YXJnZXQvbGludXgvcmFtaXBzL3BhdGNoZXMtNC4xNC8wMDMyLVVTQi1kd2MyLWFkZC1kZXZp
Y2VfcmVzZXQucGF0Y2ggYi90YXJnZXQvbGludXgvcmFtaXBzL3BhdGNoZXMtNC4xNC8wMDMyLVVT
Qi1kd2MyLWFkZC1kZXZpY2VfcmVzZXQucGF0Y2gKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IGMwNGUyZGI2NjEuLjAwMDAwMDAwMDAKLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9wYXRj
aGVzLTQuMTQvMDAzMi1VU0ItZHdjMi1hZGQtZGV2aWNlX3Jlc2V0LnBhdGNoCisrKyAvZGV2L251
bGwKQEAgLTEsMjkgKzAsMCBAQAotRnJvbSBhNzU4ZTA4NzBjNmQxZTRiMDI3MmY2ZTdmOWVmYTlm
YWNlNTUzNGJiIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQotRnJvbTogSm9obiBDcmlzcGluIDxi
bG9naWNAb3BlbndydC5vcmc+Ci1EYXRlOiBTdW4sIDI3IEp1bCAyMDE0IDA5OjQ5OjA3ICswMTAw
Ci1TdWJqZWN0OiBbUEFUQ0ggMzIvNTNdIFVTQjogZHdjMjogYWRkIGRldmljZV9yZXNldCgpCi0K
LVNpZ25lZC1vZmYtYnk6IEpvaG4gQ3Jpc3BpbiA8YmxvZ2ljQG9wZW53cnQub3JnPgotLS0tCi0g
ZHJpdmVycy91c2IvZHdjMi9oY2QuYyB8ICAgIDMgKysrCi0gMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKQotCi0tLS0gYS9kcml2ZXJzL3VzYi9kd2MyL2hjZC5jCi0rKysgYi9kcml2ZXJz
L3VzYi9kd2MyL2hjZC5jCi1AQCAtNDgsNiArNDgsNyBAQAotICNpbmNsdWRlIDxsaW51eC9pby5o
PgotICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Ci0gI2luY2x1ZGUgPGxpbnV4L3VzYi5oPgotKyNp
bmNsdWRlIDxsaW51eC9yZXNldC5oPgotIAotICNpbmNsdWRlIDxsaW51eC91c2IvaGNkLmg+Ci0g
I2luY2x1ZGUgPGxpbnV4L3VzYi9jaDExLmg+Ci1AQCAtNTIxNSw2ICs1MjE2LDggQEAgaW50IGR3
YzJfaGNkX2luaXQoc3RydWN0IGR3YzJfaHNvdGcgKmhzbwotIAotIAlyZXR2YWwgPSAtRU5PTUVN
OwotIAotKwlkZXZpY2VfcmVzZXQoaHNvdGctPmRldik7Ci0rCi0gCWhjZmcgPSBkd2MyX3JlYWRs
KGhzb3RnLT5yZWdzICsgSENGRyk7Ci0gCWRldl9kYmcoaHNvdGctPmRldiwgImhjZmc9JTA4eFxu
IiwgaGNmZyk7Ci0gCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL3BhdGNoZXMtNS40
LzAwMzItVVNCLWR3YzItYWRkLWRldmljZV9yZXNldC5wYXRjaCBiL3RhcmdldC9saW51eC9yYW1p
cHMvcGF0Y2hlcy01LjQvMDAzMi1VU0ItZHdjMi1hZGQtZGV2aWNlX3Jlc2V0LnBhdGNoCmRlbGV0
ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCBlYzgzN2NkYTkzLi4wMDAwMDAwMDAwCi0tLSBhL3Rh
cmdldC9saW51eC9yYW1pcHMvcGF0Y2hlcy01LjQvMDAzMi1VU0ItZHdjMi1hZGQtZGV2aWNlX3Jl
c2V0LnBhdGNoCisrKyAvZGV2L251bGwKQEAgLTEsMjkgKzAsMCBAQAotRnJvbSBhNzU4ZTA4NzBj
NmQxZTRiMDI3MmY2ZTdmOWVmYTlmYWNlNTUzNGJiIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQot
RnJvbTogSm9obiBDcmlzcGluIDxibG9naWNAb3BlbndydC5vcmc+Ci1EYXRlOiBTdW4sIDI3IEp1
bCAyMDE0IDA5OjQ5OjA3ICswMTAwCi1TdWJqZWN0OiBbUEFUQ0ggMzIvNTNdIFVTQjogZHdjMjog
YWRkIGRldmljZV9yZXNldCgpCi0KLVNpZ25lZC1vZmYtYnk6IEpvaG4gQ3Jpc3BpbiA8YmxvZ2lj
QG9wZW53cnQub3JnPgotLS0tCi0gZHJpdmVycy91c2IvZHdjMi9oY2QuYyB8ICAgIDMgKysrCi0g
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQotCi0tLS0gYS9kcml2ZXJzL3VzYi9kd2My
L2hjZC5jCi0rKysgYi9kcml2ZXJzL3VzYi9kd2MyL2hjZC5jCi1AQCAtNDksNiArNDksNyBAQAot
ICNpbmNsdWRlIDxsaW51eC9pby5oPgotICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Ci0gI2luY2x1
ZGUgPGxpbnV4L3VzYi5oPgotKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgotIAotICNpbmNsdWRl
IDxsaW51eC91c2IvaGNkLmg+Ci0gI2luY2x1ZGUgPGxpbnV4L3VzYi9jaDExLmg+Ci1AQCAtNTAy
Myw2ICs1MDI0LDggQEAgaW50IGR3YzJfaGNkX2luaXQoc3RydWN0IGR3YzJfaHNvdGcgKmhzbwot
IAotIAlyZXR2YWwgPSAtRU5PTUVNOwotIAotKwlkZXZpY2VfcmVzZXQoaHNvdGctPmRldik7Ci0r
Ci0gCWhjZmcgPSBkd2MyX3JlYWRsKGhzb3RnLCBIQ0ZHKTsKLSAJZGV2X2RiZyhoc290Zy0+ZGV2
LCAiaGNmZz0lMDh4XG4iLCBoY2ZnKTsKLSAKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
