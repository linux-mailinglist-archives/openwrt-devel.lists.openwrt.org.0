Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 958A71ED98C
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 01:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0OkKcZJUURmBsgAt1m4KbFT8PeDFXX0F1R6fsXkmYg=; b=RJ18ZK4TzDepkO
	FsnI9S3YhlpTjkt4LFf6/RLMRA5+Ltga0S1P5EeMKT8LovygRY6NkhOVxZauit8Ay6et370hkj+oF
	8k85iaHGoRamrfclvvSlpSDV+00Nl9fb0h0amNurpvrBKqRW+70/eJmUN67QlL+IpKxJTr7ngOjCb
	30O5+WX35vccNlfwVHC2jfC4ScYh3foCdw98ZjhRHkIsg+nZb6gtYsyViUc4eyaVCh2C2u+6dSH41
	iUZ+Z+3N8pbFfERVZlE+Y9INXDks3gsdQb3kaTLz2UCVjzNIwTasWUiMuUXnzSDsjmI/Iu0jWWHIa
	IC1mMKVsYb1PtMqe6AMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgcy1-0000gN-MD; Wed, 03 Jun 2020 23:38:41 +0000
Received: from mail-dm6nam12olkn2014.outbound.protection.outlook.com
 ([40.92.22.14] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgcxt-0000fi-D6
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 23:38:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YQpu6ZVfsdulKxB8ZnFOHtdqDUaPhsHxKSAMglbsdQ6OhKduZQoAJfZPdIwsPUH4/6U7L/f8Td2uJ8sxwPuKojQc5REa2dtSbqPgyEZ9oyjU39vCHZoZ+hoEsxVC5BVFowLl7t7rYpzPQyrxF5cNaCk8M2E5A5oPc+9yBMYQjuXwUrnw5v0XgkY6dv++DWra2/P5HnCYotyV6LAIh1T1EiVU4tHYUTml45jO47K4Wdt4GxFycyyeRx1J5E98J0kwVB9KN0r9zgGuDWuH9hSz9nweZ//dKyekdCM5D57pR1A8QHPKwhgN8UDNN3zZGs+lWbrMziJFPhTz/fA1tCrbkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S7D0qFTnXHao4kHElw89IQtDCtgYc6xf5odytMzM1Qo=;
 b=nGhVJO+WJRBJiKhZXggMrLwHAHeEMxH4qHu1Ko7cqua9/hWc1pbdv7sNzCdMeHthDjHm7rDwPwkk1WOstRvS26L/GQJy9J2JidpzEOqX2OJSCSLiuQ9Xp/4rdE1aAHKpSyKojKaSoIIokjlg3Ya6cLRH+G8+XBhxPeGP/04FWnBKkt8PtO0FrwIyPPY2H0OgJ04lPu0hxS6d3QlWtlpZ/80FA7Jw9C11AZ5Hik2ce6ovTMFJewmEEylHW1dDH8egciSWmzLYpFrnK21tAvYz8Ga+YURKmabA8VoAjXVqKvilCfJZ+tiv8XEosgoHV09niiO7VEVwSIFq4+0WYwHE2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S7D0qFTnXHao4kHElw89IQtDCtgYc6xf5odytMzM1Qo=;
 b=kQ3vqj4xAYV6DkqEfrtiyTtE/RZON3TlV0OTijKVgqh3WigGY4vpQ07nwXnh8H9DMzkiSqgHjYLEXAOKzgVzyycNljPaJsygIzRrGCQ/WEqVIR34LtjkZvNc3P5KvZ8Gd0pkTk/SWWiEUri0p+tFQhM6UczkxOtD4bc/OCpPgfJKswfKFAKPGC0WpkEcxjQYfoyFtffp/OJBOpWeDWpilYBs0mSSyz9FrvX/qxVal5pZMgvFIgSyFRZs/SPUt8zFD8r8oEThlepK0uUAoQ5WK13sQQNGzTJm347P1f/xp812cm8yxJxZ4DJ4mTVzuHDqWkwXCqK0SWovFvemJ+XO7g==
Received: from DM6NAM12FT011.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::45) by
 DM6NAM12HT187.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::102)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.8; Wed, 3 Jun
 2020 23:38:30 +0000
Received: from BN8PR17MB2723.namprd17.prod.outlook.com
 (2a01:111:e400:fc64::4b) by DM6NAM12FT011.mail.protection.outlook.com
 (2a01:111:e400:fc64::427) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.9 via Frontend
 Transport; Wed, 3 Jun 2020 23:38:30 +0000
Received: from BN8PR17MB2723.namprd17.prod.outlook.com
 ([fe80::e40e:a174:6544:c24e]) by BN8PR17MB2723.namprd17.prod.outlook.com
 ([fe80::e40e:a174:6544:c24e%5]) with mapi id 15.20.3045.024; Wed, 3 Jun 2020
 23:38:30 +0000
From: Adrian Panella <ianchi74@outlook.com>
To: =?iso-8859-2?Q?Petr_=A9tetiar?= <ynezz@true.cz>
Thread-Topic: [OpenWrt-Devel] Subject: [PATCH 1/1] blobmsg_json: allow to add
 full json files
Thread-Index: AdXpusK+P7rMCQXMTC6YbOck6Fm5GhP03LEAABu6BLA=
Date: Wed, 3 Jun 2020 23:38:30 +0000
Message-ID: <BN8PR17MB2723D7D825C6AA9EA30E240BDB880@BN8PR17MB2723.namprd17.prod.outlook.com>
References: <DM5PR17MB09230F70AD09E8304B20C222DBEE0@DM5PR17MB0923.namprd17.prod.outlook.com>
 <20200603100320.GA3056@meh.true.cz>
In-Reply-To: <20200603100320.GA3056@meh.true.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:DD851F021711A40F8CF9E41CB3FD6A20B37AD6254E546E9F536D4B7600D9AAAA;
 UpperCasedChecksum:F72C101F602B741A3CE1B0BA32C23CC174018FEE3F2A3701671ADE331A473B9F;
 SizeAsReceived:7035; Count:45
x-tmn: [oi8EgcH6FvWFlIhP7NVhy6XTpt8Ggod1]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 6ae6525f-21e8-48bc-5c5e-08d8081738e6
x-ms-traffictypediagnostic: DM6NAM12HT187:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8u8WFLEQF7xygRLagEZSgFJXvF0xubF8PUccBstylB9IABq+/r72/MUeU84ExViJ6PYVMZ369gsm54/V6RfNpw1RhpOEoEd9H5zfOawcsViXGZFeh8PF91kPH2WtxQnfKrF2XUMerp2vMgtHmW++iK1Tgp3fhS9NMHvKhpeCMX486++645EVt8iHy0tgoWGk2YdnairnpX8/vRa3T6Ocz0lgfGIpCj4IWCUR+U+8bEYtQBlxpDn3sbVKbKYbksil
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR17MB2723.namprd17.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: vESlxpX8CEmFh4huO83sN72CWKQ3TmVd5bj29/+wNq+K2tcLao+8ZvUl72ZJeikNWya/sfvOSCAcBwK0LARfmN9ct09+MEfKHNGk1AfV7gghwDF/vf3QmH/OefaQSDKSXmb9BP9hs/M/KqDjJV4j0w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ae6525f-21e8-48bc-5c5e-08d8081738e6
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 23:38:30.4336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT187
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_163833_515107_AA82401D 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.14 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.14 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ianchi74[at]outlook.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ianchi74[at]outlook.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Subject: [PATCH 1/1] blobmsg_json: allow to add
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

Is there any documentation on the testing infrastructure being used, and wh=
at kind of unit test are expected.
I couldn't find any guide on the wiki, and I'm more familiarized with the N=
ode JS based workflows, and if there is some guide it will be faster than g=
oing thru the code.
If you point me in the right direction I can add the corresponding tests.

Adri=E1n

-----Original Message-----
From: Petr =A9tetiar <ynezz@true.cz> =

Sent: mi=E9rcoles, 3 de junio de 2020 05:03 a. m.
To: Adrian Panella <ianchi74@outlook.com>
Cc: openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] Subject: [PATCH 1/1] blobmsg_json: allow to ad=
d full json files

Hi,

next time please do:

 $ git format-patch -s1 --subject-prefix "PATCH libubox" ...

as described in https://openwrt.org/submitting-patches

Adrian Panella <ianchi74@outlook.com> [2020-02-22 20:11:28]:

> Current function "blobmsg_add_json_from_file" only adds json file if =

> it is an object,  and it only returns the properties, not a full object a=
ttribute.
> This version allows to read any valid json file and returns the =

> complete corresponding attribute.

...

>  }
>  =


whitespace issue

> +bool blobmsg_add_json_file(struct blob_buf *b,  const char *name, =

> +const char *file) {
> +	struct json_object *obj;
> +	bool ret;
> +	=


whitespace issue

Apart from this whitespace nitpicks which I could fix by myself as well, I =
would like to ask you for adding test case under tests directory for this n=
ew function, so we can later assure on CI, that there are no memleaks or ot=
her issues in this code and spot any regression later as well.

Please note, that test cases are not mandatory, but it is going to help mer=
ge your valuable contribution faster :-) Thanks!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
