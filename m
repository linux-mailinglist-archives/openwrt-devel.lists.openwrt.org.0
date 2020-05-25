Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C57D1E1304
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 18:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hp6U2SQkwWfxV3G3xcvDUc/1YKj3HiQwXZsIxP+lSc4=; b=RNh1cp/yu729y8to5XT9wYcRt
	LHy4BdUXft2BPC4p4IKxmzMTMFxtYJ3WqnCzrs0fe2xzgy+CbxUX6TfTxbmR9E7BGJ5s5UJBJTozm
	Uf9xnxbtRFkSkyqbEGjUESQwem3OWpKzy29SSy4G2EFrhMValf+0vA5Yn9iWwVM2v4rjndH9sIS0U
	pno2OWrbNB/yTwrEYT30OaNsqmIr91A3birZXkPjINSviiWrFH45TywIGhm0fDfPOs4uCv27iUgwl
	mCx01jmu7HkeqHjSodfjaN+vlEZ7U9Etn7m6Rzu+/Zkz+OgjQB0YpWmI+E2uKUsG7w++KQkGnOW+u
	PzQY/9WiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdGHg-0004dv-2I; Mon, 25 May 2020 16:49:04 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdGHW-0004cJ-HE
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 16:48:55 +0000
Received: by mail-lj1-x242.google.com with SMTP id z18so21370949lji.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 May 2020 09:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=9KsM8L9Yrmcb62FfKYc+7iKgQo0SqiCX2cOO3Yj0oN0=;
 b=mhjJRJCRpyn87h1DHG/O3PZ4lagDfocc+NT8O11aOSHPoTTUE8pTeO9pOy/fsb9tRm
 RsthlZh4ixKMIU4nbC9NaRelkPAvHq/+76lrnYvP2XqBXmlbKpWOvhxHeNAQn+kRxHII
 rqF5ten9xNmsdHP2KrKqFKUQyoLIZqiWyaLd1W4aNsU3ytZlD+4zCWmGKc5cJuPAlffj
 570UPwYF/6AdYStJsmKktFZdzOADS/kTyQGSJ6yBN+jbBHPzrWlFavCHFbJ50Ayiz34q
 g2nsdqgkiiSXEZsMUOY+UiJF/HlyotuoTtR4DgJWvaU25KgYOc+L+bQwT9qwQ3WCNCsK
 4j4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9KsM8L9Yrmcb62FfKYc+7iKgQo0SqiCX2cOO3Yj0oN0=;
 b=WCLTfkfxg3zCnJ1UJZZNbp7NZ1i+r/ZyE7Zg5TkV1KOMooHgfNfy+pj/a0kdc0jH6D
 9mgMAvwEDhrI45H8nR/HAlBi4aHEPBFd1yc0pw1uJdVG5TiJMVrTnOBJs5o5z1nVpdIW
 5psDd7K4GNqs4dGOlafO8LWfXzuLTYCaVXDDF2F9G0yKp2GHeaihtOKx3mmcbEKqgdHE
 rwehXRe+oW9h/nEgu+kRxlYXlEjutaxcqJKE6kHvXW5olN79AQMCeBIg4P147cGWpAg5
 Y9W0Jh4k2F8KxmbCylu4NrgzeUCRfwjdmvYeoVE/QaFccGKGTpTfwf0ZRP0WfFVoiFVm
 6MNg==
X-Gm-Message-State: AOAM530BYmr5PG4e/0BG/r98Z0+1zAK5s9eoAnfUe815fYWGPCLvTmOo
 5raCz6ErRDinozxKW5mP0pe2Dgxx
X-Google-Smtp-Source: ABdhPJzoYZfxv9t70OMW2/srIkMQcDK1I6PT8afjEzg3gFJl+bW3H1sd28OgxKX9sdr/tILwlkX89g==
X-Received: by 2002:a2e:81d1:: with SMTP id s17mr14850730ljg.91.1590425332641; 
 Mon, 25 May 2020 09:48:52 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id y11sm1575196lji.52.2020.05.25.09.48.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 09:48:52 -0700 (PDT)
To: Felix Fietkau <nbd@nbd.name>, openwrt-devel@lists.openwrt.org
References: <20200525151908.3930-1-nbd@nbd.name>
 <20200525151908.3930-2-nbd@nbd.name>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <043511e8-614f-0255-500c-7b37bb8dbc35@gmail.com>
Date: Mon, 25 May 2020 18:48:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200525151908.3930-2-nbd@nbd.name>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_094854_572538_A54AA4AD 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH libubox 2/3] blobmsg: simplify and fix
 name length checks in blobmsg_check_name
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

T24gMjUuMDUuMjAyMCAxNzoxOSwgRmVsaXggRmlldGthdSB3cm90ZToKPiBibG9ibXNnX2hkcl92
YWxpZF9uYW1lbGVuIHdhcyBvbWl0dGVkIHdoZW4gbmFtZT09ZmFsc2UKPiBUaGUgYmxvYl9sZW4g
dnMgYmxvYm1zZ19uYW1lbGVuIGNoYW5nZXMgd2VyZSBub3QgdGFraW5nIGludG8gYWNjb3VudAo+
IHBvdGVudGlhbCBwYWRkaW5nIGJldHdlZW4gbmFtZSBhbmQgZGF0YQo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEZlbGl4IEZpZXRrYXUgPG5iZEBuYmQubmFtZT4KVGVzdGVkLWJ5OiBSYWZhxYIgTWnFgmVj
a2kgPHJhZmFsQG1pbGVja2kucGw+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
