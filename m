Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB481691B6
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 21:11:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1tkBq9vf4bgY+2MQDC8j4P5/UO0g+FzJpJcWmzEPIAQ=; b=QrG7zsTWKYl7m7
	4Hum48Wnzd9qs6c/5wFaEbmK1XvrM6pE+yTFUCwr2AdZYE3iyuUg/BekxBIW6J69+iwrovE34NCNV
	CcEZ4kBCNa7lr5z7jrGMqNbvWXiDfOYDdryfQFU1LQrrXIH1b4FgGqzw+MMXQYMEqJvvkO56n6QBS
	YwZuG96yszN0+9rxmCoCQuAFN+kSsRh9ndBF7fwLwnGe9OkBRnkkdxIlszzUxiR+ZRWEn31NkMjqN
	0iX04+sDqo84UMNFYRYX1yIrxpe/XkPCKcwxznaAm1osVVIo6g26K6c8mZzIojoHh6vAjc1P73Sv7
	h94RN3FwPmR/poKqftOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5b7k-0000Gl-20; Sat, 22 Feb 2020 20:11:40 +0000
Received: from mail-oln040092009045.outbound.protection.outlook.com
 ([40.92.9.45] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5b7c-0000G5-Nh
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 20:11:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npTkPGWuGGmWYF+INWihCcrir9LZoXkhzsws1LR0V4P537SgAc2Zg0W21r5VNKJuRBhDmy8rlGUS6QqXZI97tspyR3r54mr0WDgsxcaXD02ntBoekDVO8gS6BcuQwj1nGJbKiadljL21gSq45mLKnXumNDK/QgCg5UsX80jix6u+AYYBmN0hdvGyM7bLlFncu4JfWxPMbgoS3RlyZpJ4x4End1i5yWQdhzYpTUXOTQg31BelZqFnOjYjCbljcex7sebYZ9wBJaSw1YCSet5gjYFThwV0mG/i2D9wP0wletlDDRnD7+cLwN0WH4JuS6vWhsec9dvtuhaiFiBxIT+e/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PcrmMFf4MTY9d8LocbUfCe3pykKibD6zA3yKCryqk3Y=;
 b=EzgErE9uDW5ww8KeRR/u+vhoNWAiyAxatK9WvLvF9wU34uBn/j+eA2RgZNuMBtezsydF5+iWwsCHam9gHuH12fFctADZdhYZzfQVmIv3k3CqtD+azV+bhOcuQPIDqKoH4q0CzOivESAf7faN0I1Vjc3KG6ajmoYrhH4mKFt78puogrpYBtv9VtsLdfXxq7Vs980CYlcjLgaUXN8OEvaw6XPzXRe61tMfTPH2qE069wI1nwFuiXuqgX8JnbcwlSBUZBX4npjvai8LzcRZmbIA6anO8ypIKrggWlDPAVGZ1YZtOL+Dx92AX9SOpcBnru2gdsW6+ecnxyK79ICBodiaSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PcrmMFf4MTY9d8LocbUfCe3pykKibD6zA3yKCryqk3Y=;
 b=GSpGyoY8Y5RZiwruM6fARDqsgDprFV+Zh7tbiDd/a9nshjAF9p0wVBr8lo9pRk00QeUFtkz89+mj1yK0fu8P6z7QxQi7RbuUDORN5I0cJuqSCbISxJeYf6Dbc3QWMRsyS+obokcAjP0YSZlwok+WmwKw1H7KVUJtSetkUVZRUEZwmYNr7kiRvPT5dQK7uuIStiosaVU0cjrpDdWNQWn9RG/UeSDW9JA2icQdcawpG5ijI4E8hNI6apoZVCmtDauXcGJVIcP4awjsq/1owwF+Tb07LLvPPjrC/Q/mJ9i3VO84BVyJ7XdI+n/3DFzwfk7Uofp/cB3GHvePfxh2XGoc0w==
Received: from CO1NAM04FT022.eop-NAM04.prod.protection.outlook.com
 (10.152.90.55) by CO1NAM04HT056.eop-NAM04.prod.protection.outlook.com
 (10.152.91.138) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.19; Sat, 22 Feb
 2020 20:11:28 +0000
Received: from DM5PR17MB0923.namprd17.prod.outlook.com
 (2a01:111:e400:7e4d::3a) by CO1NAM04FT022.mail.protection.outlook.com
 (2a01:111:e400:7e4d::167) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Sat, 22 Feb 2020 20:11:28 +0000
Received: from DM5PR17MB0923.namprd17.prod.outlook.com
 ([fe80::890c:480f:2236:9bf5]) by DM5PR17MB0923.namprd17.prod.outlook.com
 ([fe80::890c:480f:2236:9bf5%12]) with mapi id 15.20.2750.021; Sat, 22 Feb
 2020 20:11:28 +0000
From: Adrian Panella <ianchi74@outlook.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: Subject: [PATCH 1/1] blobmsg_json: allow to add full json files
Thread-Index: AdXpusK+P7rMCQXMTC6YbOck6Fm5Gg==
Date: Sat, 22 Feb 2020 20:11:28 +0000
Message-ID: <DM5PR17MB09230F70AD09E8304B20C222DBEE0@DM5PR17MB0923.namprd17.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:1DF192F1C4558EB1B41E5334C68A95094768B41E19823BF676374D8112C37ECB;
 UpperCasedChecksum:DC893F7FA002AFF4C79CAA529F40DF603EF2D2BFD0179CACD59A6CAFB678E773;
 SizeAsReceived:6753; Count:42
x-tmn: [/erdS6BmfH6YZsHZh82b1N2Qa+y8xmlM]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: d9ae9ec7-29de-4513-d0bb-08d7b7d36696
x-ms-traffictypediagnostic: CO1NAM04HT056:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hHrDR26t0+7HJgflNCGVznmLzJYLrA2KlzuzJq741rW3BiUcWe8XOIvKveR6JArtAkPXSzUl5FmJoD3ok0oFXRGMGb5i1eCukRiRqqJxoFyewuDafU+tTaehvUaG+7tZYw5IKK7+5HYKtxsefXHTuCozRzY3nS+W9FCA9qrnUAdKiv+MkmnsiIdChGMBJcAR
x-ms-exchange-antispam-messagedata: LwdTONic2vu32ebod6QOFZMtidVjrX/2ylIYaNQ8SCr8wIt/aXTExsmHqu30ii8votvKS/Q+nWM1UpSfkSRoFvDiMXmJVe4qj/6psxBDPK//zIN3pzB7+C8F8TYL7OgYvL3KCkrDcJyCjmOKXvcv9w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d9ae9ec7-29de-4513-d0bb-08d7b7d36696
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2020 20:11:28.2267 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_121132_823816_F5625A33 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.9.45 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ianchi74[at]outlook.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ianchi74[at]outlook.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Subject: [PATCH 1/1] blobmsg_json: allow to add
 full json files
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Current function "blobmsg_add_json_from_file" only adds json file if it
is an object,  and it only returns the properties, not a full object
attribute.
This version allows to read any valid json file and returns the complete
corresponding attribute.

Signed-off-by: Adrian Panella <ianchi74@outlook.com>
---
 blobmsg_json.c | 16 ++++++++++++++++
 blobmsg_json.h |  1 +
 2 files changed, 17 insertions(+)

diff --git a/blobmsg_json.c b/blobmsg_json.c
index dce81e9..b8f91f1 100644
--- a/blobmsg_json.c
+++ b/blobmsg_json.c
@@ -87,6 +87,22 @@ bool blobmsg_add_json_element(struct blob_buf *b, const char *name, json_object
 	return ret;
 }
 
+bool blobmsg_add_json_file(struct blob_buf *b,  const char *name, const char *file)
+{
+	struct json_object *obj;
+	bool ret;
+	
+	obj = json_object_from_file(file);
+
+	if (!obj)
+		return false;
+
+	ret = blobmsg_add_json_element(b, name, obj);
+
+	json_object_put(obj);
+	return ret;
+}
+
 static bool __blobmsg_add_json(struct blob_buf *b, json_object *obj)
 {
 	bool ret = false;
diff --git a/blobmsg_json.h b/blobmsg_json.h
index 9dfc02d..61cdbe5 100644
--- a/blobmsg_json.h
+++ b/blobmsg_json.h
@@ -23,6 +23,7 @@ struct json_object;
 
 bool blobmsg_add_object(struct blob_buf *b, struct json_object *obj);
 bool blobmsg_add_json_element(struct blob_buf *b, const char *name, struct json_object *obj);
+bool blobmsg_add_json_file(struct blob_buf *b,  const char *name, const char *file);
 bool blobmsg_add_json_from_string(struct blob_buf *b, const char *str);
 bool blobmsg_add_json_from_file(struct blob_buf *b, const char *file);
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
