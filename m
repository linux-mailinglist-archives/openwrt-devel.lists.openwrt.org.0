Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0573221C6E
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 19:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XzKlAwTTlw+re9NtEOKsc5gvQR1s2PSRqkg6EBlUDKY=; b=sb9v5+Tj4DKcGO
	RADYz+KWx8+88IhOXvo0LZeocGi9KazTDUxT28tYw1KVAmxSjGWsTt0tySAwwgvRgVCjULGMuJ0gn
	sIWUK9W7NbvG6xhg/BgNAY9Vd6m/1Wv2v6PAkUVdwMpaHptN52A4+MOsoRourcufgrV25LoXztnpc
	1oUA0fipQuxCY86QZ0nlPUgLU6uVaEwQmTo1Slc0/iqDHjSXPne5fGnnnBS+wbXAFOzwqZzle/sSM
	SgZT8ysbuGlz/3cIiS3wJvDZmaAYEoylY+CsLofbBFJqHRAvUyevJOmfrFnJHZVB7+PGIsF3pr7fI
	q5nfoKtyanKi7tzKayxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRgdU-00032R-9W; Fri, 17 May 2019 17:27:12 +0000
Received: from mail-oln040092064041.outbound.protection.outlook.com
 ([40.92.64.41] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRgdN-00031p-Dk
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 17:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pcL58LxCrrfjLjAdq+3YBoFB/uQfbaYRhFDcRixDpf4=;
 b=CUfFbXCepB/7zVqZOBn/lybXwANyZ38jYI1nfQZymhdu8W5BASIRl19atlYbbFkC0SD6VFpgs0soRw3MGzkZJmWjdKsFqnJpnLyMllPrsRjoGUIdTqMF/SjpFxdMu0UPLvOdcyQdYMB7/N4OL4bv1PfzBEXCGBLku1b3qEptBTAiqm5xi5ye0t9k6PWZk3TIlTp+7a9GbiBUr0KaAgNrt08fvJ+nYUPaw0h56ASmCVggd78KvvojJR6oq5el0LdrvUKL++zXzQMHA8bCXX8UGOdbuSHa6AjVqH4sfY8KyAbi8Aq5UCfB14uxl68qz/sSeHAjg6Ga4BhLiJifis7FQA==
Received: from VE1EUR01FT031.eop-EUR01.prod.protection.outlook.com
 (10.152.2.57) by VE1EUR01HT108.eop-EUR01.prod.protection.outlook.com
 (10.152.3.100) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11; Fri, 17 May
 2019 17:27:01 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com (10.152.2.51) by
 VE1EUR01FT031.mail.protection.outlook.com (10.152.2.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Fri, 17 May 2019 17:27:01 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b]) by AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b%7]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 17:27:00 +0000
From: Tan Xiaofan <xfan1024@live.com>
To: Hans Dedecker <dedeckeh@gmail.com>, Tan Xiaofan <xfan1024@live.com>
Thread-Topic: [OpenWrt-Devel] [PATCH] interface-ip: fix find locally
 addressable target for p2p
Thread-Index: AQHVDAYgBLwIj4rXG0+Oxwt/mwR5+qZuCjiggAF4l4CAABB70A==
Date: Fri, 17 May 2019 17:27:00 +0000
Message-ID: <AM6PR03MB4821E5D7897A9ADAB7C60B50B50B0@AM6PR03MB4821.eurprd03.prod.outlook.com>
References: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsHrZ+SKkFz+w_Cb_aSztT9yB6p9xYdnc1c+Mdwh6ftOig@mail.gmail.com>
 <AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsFycig9BNYkh24CeFAjadb+wJgO4uqmaFp0Qa86P8WNtA@mail.gmail.com>
 <AM6PR03MB4821953F914D9BAF83521992B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsHoFxKzCuPQWW-pP8pOjQMiWVOs=ZL-Ms9baF9j-hDXNg@mail.gmail.com>
In-Reply-To: <CAJLcKsHoFxKzCuPQWW-pP8pOjQMiWVOs=ZL-Ms9baF9j-hDXNg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:A4D9B1B2CBEE64E78ED5894E65F49785C076E3DD26495B0D8D6CCB0BDE86487A;
 UpperCasedChecksum:A71A389C136968E846BC86D5F2230D70798AE0E46E0B09175C168AE16708D831;
 SizeAsReceived:7285; Count:43
x-tmn: [tJP17mcVrkGNCUOs6diGgtv9OmiiyB1h]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-exchange-slblob-mailprops: zswcL9HXbeVgaHbn7FVg4icUewJLNUBke0sjwcc8JAc2+4M4Bp4nLWhYStxigADbZM34Kl25Ce3uAWeeKskWz3gkmY3mbaWHb+DpaKrimWC1EtRkl1WUKln9hU3yJL59ftiWzXRHGBQ8QEPNn+EikOAuUaWsu3xwnAJb2i0z1nL+5UpbBxPSn61C/cpxfEeBJDA/2vnS05eKDcnu9A+6ZzvhK5Br6v4O/5MQ7LHMaB1ppbMi6fr/QbvJ7g/uAV2PpLdo70mmcI/5wyHckussPdgrqKhruScT4E8vA1xMpv2QfalQPJwRDFm4nvoqg6Ph5vFfUbCFA3anVJxQIk896c3uuYFcI2ipNwoDXUX8dt+Ad0zBUXzlN2uS05mq50EMnhxCq6m4R2/3S8ZvRHPuNYVt/oTPqJfWWaMbbkGWdxRtZKm1nAdk75udOGvfuTg/2aJpGQQxsyLFZN27IYd6O68OTyzkvXfDf/MA5R6qiJeng7jgyuu4NCzNhZg3WWatbyWnhBjrNtWooeXTevzJPWeIuAdv85VXlGZfWbypJx3UID/WcOYaRsVeO5w1TfBNeMdYbMab0Uf3jKhnLu1i/GgBNhrthrN1VL5oDI4SibQRjC+bcGVMfga6x5YLIBlNbYTeux6UvnzgYyBjEuxU82uU7U/hVw9K+jjqFBaH+br3rOsObHtShlm3JT6UeBKIsVECqBlGtt2QVFYzLwEAaz02a+8LlHKUiBJXiElszfmuIGfaMeaO2exXii8QmCSJ
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(201702181274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR01HT108; 
x-ms-traffictypediagnostic: VE1EUR01HT108:
x-microsoft-antispam-message-info: yISVv0qUGJCn/pO2C/ix29dBMHy6lV7SnqY3rwuBT+AiNskAiT4Xmwz0rXzjSLXet5+K2FDKRA0guXtFvUWu+PgAWRg/vsOdzDq8JWKIYMVoDkjn/mGom8qp9GUwd7209QTm72vMouw3QQW92mXTPh6dL7WmHSi3AwW9Z04JPZSUafFHal2Wjwo+DhXydRb4
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f30c1286-6543-4d9c-402e-08d6daecdefe
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 17:27:00.7075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_102705_554104_06450A8C 
X-CRM114-Status: UNSURE (   5.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.64.41 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (xfan1024[at]live.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xfan1024[at]live.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] interface-ip: fix find locally addressable
 target for p2p
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

> Can you share the network config which requires this patch ?
> 
> Hans

config interface 'wan'
	option ifname 'eth0'
	option proto 'dhcp'

config interface 'iptun'
	option proto 'l2tp'
	option defaultroute '0'
	option server '192.168.100.1'   # l2tp server

config interface 'veth'
	option proto 'gretap'
	option ipaddr '10.255.255.100'  # iptun ipaddr
	option peeraddr '10.255.255.1'  # iptun peeraddr
	# option tunlink 'iptun'
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
